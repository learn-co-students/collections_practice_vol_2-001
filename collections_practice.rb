def begins_with_r (arr)
  arr.each_with_object(true){|str,obj| if str[0]!="r" 
  return false
  end}
end

def contain_a (arr)
  arr.each_with_object([]){|str, obj| if str.include? "a"
    obj<<str
  end}
end

def first_wa (arr)
  arr.each{|str| if str[0]=="w"&&str[1]=="a"
    return str
  end
}
end

def remove_non_strings (arr)
  arr_new=[]
  arr.each{|obj| if obj.class == String
  arr_new<<obj
  end}
  arr_new
end

def count_elements (arr)
  result=[]
  count=arr.each_with_object([]){|obj,count| count<<arr.count(obj)}
  arr.each_with_index{|obj,index| hash={}
  hash=obj
  hash[:count]=count[index]
  result<<hash}
  result.uniq
  
end

def merge_data(arr1, arr2)
  arr=[]
  tmp=arr2[0].values
  arr1.each_with_index{|obj,index| hash = {}
  hash=obj
  arr<<(hash.merge(tmp[index]))
  }
   
  arr
  
end

def find_cool(arr)

  arr.each_with_object([]){|obj,arr_new| if (obj.values).include?("cool")
    arr_new<<obj

  end}
end

def organize_schools(arr)
  arr.each_pair{|key,value| arr[key]=value[:location]}
  arr_new=[]
  arr.each_pair{|key,value| if arr_new.include?(value)==false
    location=value
    arr_new<<location
    mass=[]
    arr.each_pair{|key,value| if value==location
      mass<<key
    end}
      arr_new<<mass
  end}
  hash={}
  index=0
  while index<arr_new.length do hash[arr_new[index]]=arr_new[index+1]
    index+=2
  end
  hash
  
end

organize_schools(
    {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }
  )
