def next_smaller(number)
  puts number  
  number_array = number.to_s.chars.map(&:to_i)
    i = number_array.length - 1
    k = 2
    return -1 if number_array.length == 1
    while i >= 0 
        if number_array[i] < number_array[i - 1]
            number_array_copy = Array.new(number_array)
            popped_number_array = number_array_copy.pop(k)
            new_number = number_array_copy.join + part_permutation(popped_number_array)
            if new_number.to_i < number && new_number.to_i.to_s.chars.length == number.to_s.chars.length
                return new_number.to_i
                break
            end
        end
        i -= 1
        k += 1
    end
    return -1
end

  
  def part_permutation(number_array)
    permutated_array = number_array.permutation.map(&:join).sort
    #puts "permutated array is #{permutated_array}"
    part_of_new_number = permutated_array[permutated_array.index(number_array.join) - 1]
  end
