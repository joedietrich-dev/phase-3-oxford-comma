def oxford_comma(array)
  result = ""
  case array.length
  when 0 then result = ""
  when 1 then result = array[0]
  when 2 then result = "#{array[0]} and #{array[1]}"
  else 
    result << array.shift
    last_word = ", and " + array.pop
    array.each do |word|
      result << ", " + word
    end
    result << last_word
  end
  result
end