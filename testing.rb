def factorial(n)
  puts n
  
  n < 2 ? 1 : n *= factorial(n-1)
end

puts factorial(5)