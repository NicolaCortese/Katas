def next_smaller(n)
  n_array = n.to_s.chars
  if n_array[-1] < n_array[-2]
    #swap the last two digits
    n_array[-1],n_array[-2] = n_array[-2],n_array[-1]
    return n_array.join.to_i
  end
end

puts next_smaller(21)
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

