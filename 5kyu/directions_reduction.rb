def dirReduc(arr)
  i = 0
  while i < arr.length-1
    if arr[i]=="NORTH" && arr[i+1]=="SOUTH"
      arr.delete_at(i)
      arr.delete_at(i)
      i=0
      next
    elsif arr[i]=="SOUTH" && arr[i+1]=="NORTH"
      arr.delete_at(i)
      arr.delete_at(i)
      i=0
      next
    elsif arr[i]=="EAST" && arr[i+1]=="WEST"
      arr.delete_at(i)
      arr.delete_at(i)
      i=0
      next
    elsif arr[i]=="WEST" && arr[i+1]=="EAST"
      arr.delete_at(i)
      arr.delete_at(i)
      i=0
      next
    end
    i += 1
  end
  return arr
end