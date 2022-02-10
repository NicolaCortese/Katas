def valid_parentheses(text)
  
  open_brack = 0
  closing_brack = 0
  i = 0

  parentheses_arr = text.split("").select { |char| char == "(" || char == ")" }
  
  while i < parentheses_arr.length
    parentheses_arr[i] == "(" ? open_brack += 1 : closing_brack += 1
    return false if closing_brack > open_brack
    i += 1
  end
  
  open_brack == closing_brack

end


valid_parentheses("((()ooy((()htbecohu)(j)")


# get rid of all chars except "()" - split into array then iterate through keeping only the "()" chars
# return false if odd
# figure out a way to count the opening brackets and compare the position to the closing ones
# 
  