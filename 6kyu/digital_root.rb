def digital_root(n)
  sum = 0
  while true
    sum += n.to_s.split("").map(&:to_i).sum
    n = sum
    puts n.to_s.length
    if n.to_s.length == 1
      break
    end
  end
  return sum
end