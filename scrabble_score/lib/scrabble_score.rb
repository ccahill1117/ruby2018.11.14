def scrabble_score(user_input_string)
  x = user_input_string.scan(/[AEIOULNRST]/)
  temp_score = x.length*1
  total_score = temp_score

  x = user_input_string.scan(/[DG]/)
  temp_score = x.length*2
  total_score = total_score + temp_score

  x = user_input_string.scan(/[BCMP]/)
  temp_score = x.length*3
  total_score = total_score + temp_score

  x = user_input_string.scan(/[FHVWY]/)
  temp_score = x.length*4
  total_score = total_score + temp_score

  x = user_input_string.scan(/[K]/)
  temp_score = x.length*5
  total_score = total_score + temp_score

  x = user_input_string.scan(/[JX]/)
  temp_score = x.length*8
  total_score = total_score + temp_score

  x = user_input_string.scan(/[QZ]/)
  temp_score = x.length*10
  total_score = total_score + temp_score
end
