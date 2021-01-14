def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a,b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a,b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array,from,to)
  array[from], array[to] = array[to], array[from]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |str|
    str[2] = "$"
  end
end

def find_a(array)
  array.select { |words| words[0] == "a"}
end

def sum_array(array)
  total = 0
  array.each { |num| total += num }
  total
end

# def add_s(array)
#   i = 0
#   while i < array.size
#     if i != 1
#       array[i] += "s"
#     end
#     i += 1
#   end
#   array
# end

def add_s(array)
  array.each_with_index.collect { |str, int| int != 1 ? str += "s" : str }
end
