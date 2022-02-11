

def pick_peaks(arr)
  
  pos = []
  peaks = []
  e = 0
  while e <= arr.length-3
    puts "New iteration"
    puts "This is e: #{arr[e]}"
    puts "This is e + 1: #{arr[e + 1]}"
    puts "This is e + 2: #{arr[e + 2]}"
    #this finds the peaks
    if arr[e] < arr[e+1] && arr[e+1] > arr[e+2]
      pos.push(e+1)
      peaks.push(arr[e+1])
    #this finds the plateaus
    elsif arr[e] < arr[e+1] && arr[e+1] == arr[e+2]
      x = e + 1
      while (e + 1) < arr.length - 2
        if arr[e + 2] > arr[e + 3]
           pos.push(x)
           peaks.push(arr[x])
           break
        elsif arr[e + 2] == arr[e + 3]
          e += 1
        else
          break
        end   
      end
    end
    e +=1
  end
  result_hash = {
    "pos" => pos,
    "peaks" => peaks
  }
  
  
end

puts pick_peaks([2, 1, 3, 1, 2, 2, 2, 2, 1])

# [1, 2, 2, 2, 1]
# [1, 2, 2, 2, 3]

# [1,2,3,6,4,1,2,3,2,1]
# [3,2,3,6,4,1,2,3,2,1,2,2,2,1]
