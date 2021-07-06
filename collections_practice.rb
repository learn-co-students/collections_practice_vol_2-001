def begins_with_r(array)
  all_start_with_r = true
  array.each do |item|
    if not item.upcase.start_with?("R")
      all_start_with_r = false
      break
    end
  end
  all_start_with_r
end

def contain_a(array)
  array.select do |item|
    item.upcase.include?("A")
  end
end

def first_wa(array)
  array.find do |item|
    item.upcase[0..1] == "WA"
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.is_a?(String)
  end
end

def count_elements(array)
  output = array.uniq
  output.collect do |item|
    item[:count] = array.count(item)
    item
  end
end

def merge_data(keys, data)
  keys.collect do |key|
    key.merge(data[0][key[:first_name]])
  end
end

def find_cool(array)
  array.select do |item|
    item[:temperature] == "cool"
  end
end

def organize_schools(array)
  output = {}
  array.each do |key, value|
    if not output[value[:location]]
      output[value[:location]] = []
    end
    output[value[:location]] << key
  end
  output
end
