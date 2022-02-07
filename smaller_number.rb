def next_smaller(n)
  n_array = n.to_s.chars
  return -1 if n_array.length == 1

  
  if n_array[-1] < n_array[-2]
    #swap the last two digits
    n_array[-1],n_array[-2] = n_array[-2],n_array[-1]
    return n_array.join.to_i

  elsif n_array[-2] < n_array[-3]
    #permutate the last three digits
    #change this so that it adds all the first characters
    first_chars = ""
    last_three = n_array.last(3)
    last_three_joined = last_three.join
   
    last_three_pas = last_three.permutation.map(&:join).sort
    
    last_three_final = last_three_pas[last_three_pas.index(last_three_joined)-1]

    result = (first_chars + last_three_final).to_i
    puts result
  end
end


puts next_smaller(312)
puts next_smaller(321)
=begin
  d.map!{|x| x.to_i}
  e = d[d.index(n)-1]
  if n > e && n.size() == e.size()
    e
  else
    -1
  end
end

74087 = ["7", "4", "0", 7 , 8]

array[-1] < array[-2]
then simply swap last two
array[-2] < array[-3]
then permutate last three
array_of_integers --> [7, 4, 8, 7, 9]  #should turn to 7,4,7,8,9
a = [7, 4]
a = a.join
b = [8, 7, 9]
three_digit_n = b.join
new_array = b.permutation.map(&:join).sort
e = new_array[new_array.index(three_digit_n)-1].to_s

result = (a+e).to_i

return result
=end

