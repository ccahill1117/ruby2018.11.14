def numbers_to_words(user_value)
  ones = Hash.new()
  ones.store(0,"zero")
  ones.store(1,"one")
  ones.store(2,"two")
  ones.store(3,"three")
  ones.store(4,"four")
  ones.store(5,"five")
  ones.store(6,"six")
  ones.store(7,"seven")
  ones.store(8,"eight")
  ones.store(9,"nine")

  teens = Hash.new()
  teens.store(10,"ten")
  teens.store(11,"eleven")
  teens.store(12,"twelve")
  teens.store(13,"thirteen")
  teens.store(14,"fourteen")
  teens.store(15,"fifteen")
  teens.store(16,"sixteen")
  teens.store(17,"seventeen")
  teens.store(18,"eighteen")
  teens.store(19,"nineteen")

  tens = Hash.new()
  tens.store(2,"twenty")
  tens.store(3,"thirty")
  tens.store(4,"fourty")
  tens.store(5,"fifty")
  tens.store(6,"sixty")
  tens.store(7,"seventy")
  tens.store(8,"eighty")
  tens.store(9,"ninety")

  orders = Hash.new()
  orders.store(2,"hundred")
  orders.store(3,"thousand")
  orders.store(5,"hundred thousand")
  orders.store(6,"million")
  orders.store(8,"hundred million")
  orders.store(9,"billion")
  orders.store(11,"hundred billion")
  orders.store(12,"trillion")

  if (user_value >= 100) && (user_value < 1000) && (user_value.to_s[1,2].to_i < 10)
    return ones.fetch((user_value.to_s[0]).to_i) + " " + orders.fetch(2) + " " + ones.fetch((user_value.to_s[2]).to_i)
  elsif (user_value >= 100) && (user_value < 1000) && (user_value.to_s[1,2].to_i < 20) && (user_value.to_s[1,2].to_i >= 10)
    return ones.fetch((user_value.to_s[0]).to_i) + " " + orders.fetch(2) + " " + teens.fetch((user_value.to_s[1,2]).to_i)
  elsif (user_value >= 100) && (user_value < 1000)
    return ones.fetch((user_value.to_s[0]).to_i) + " " + orders.fetch(2) + " " +  tens.fetch((user_value.to_s[1]).to_i) + " " + ones.fetch((user_value.to_s[2]).to_i)
  elsif (user_value >= 20) && (user_value < 100)
    return tens.fetch((user_value.to_s[0]).to_i) + " " + ones.fetch((user_value.to_s[1]).to_i)
  elsif (user_value > 9) && (user_value < 20)
    return teens.fetch(user_value)
  else
    return ones.fetch(user_value)
  end
end

def chop_up(user_value)
  outputstring = []
  temp_string = user_value.to_s().reverse().strip()
  hundreds_string = temp_string.slice(0..2)
    outputstring.push(hundreds_string)
  thousands_string = temp_string.slice(3..5)
    outputstring.push(thousands_string)
  millions_string = temp_string.slice(6..8)
    outputstring.push(millions_string)
  billions_string = temp_string.slice(9..11)
    outputstring.push(billions_string)
  trillions_string = temp_string.slice(12..14)
    outputstring.push(trillions_string)
  outputstring.each() do |substring|
    if (substring == nil) || (substring == "")
      substring.pop()
    end
  return outputstring
end
end

def chop_manual(user_value)
  user_string = (user_value).to_s
  chop_array = []
  if user_string.length == 1
    chop_array.push(user_string[0])
  elsif user_string.length == 2
    chop_array.push(user_string[0,2])
  elsif user_string.length == 3
    chop_array.push(user_string[0,3])
  elsif user_string.length == 4
    chop_array.push(user_string[0])
    chop_array.push(user_string[1,3])
  elsif user_string.length == 5
    chop_array.push(user_string[0,2])
    chop_array.push(user_string[2,3])
  elsif user_string.length == 6
    chop_array.push(user_string[0,3])
    chop_array.push(user_string[3,3])
  elsif user_string.length == 7
    chop_array.push(user_string[0])
    chop_array.push(user_string[1,3])
    chop_array.push(user_string[4,3])
  elsif user_string.length == 8
    chop_array.push(user_string[0,2])
    chop_array.push(user_string[2,3])
    chop_array.push(user_string[5,3])
  elsif user_string.length == 9
    chop_array.push(user_string[0,3])
    chop_array.push(user_string[3,3])
    chop_array.push(user_string[6,3])
  elsif user_string.length == 10
    chop_array.push(user_string[0])
    chop_array.push(user_string[1,3])
    chop_array.push(user_string[4,3])
    chop_array.push(user_string[7,3])
  end
  output_array = []
  chop_array.each do |array_element|
    output_array.push(array_element.to_i)
  end
  return output_array
end

def final_output(user_value)
  temp_array = chop_manual(user_value)
  final_words = []
  if temp_array.length == 4
    final_words.push(numbers_to_words(temp_array[0]))
    final_words.push("billion")
    final_words.push(numbers_to_words(temp_array[1]))
    final_words.push("million")
    final_words.push(numbers_to_words(temp_array[2]))
    final_words.push("thousand")
    final_words.push(numbers_to_words(temp_array[3]))
  elsif temp_array.length == 3
    final_words.push(numbers_to_words(temp_array[0]))
    final_words.push("million")
    final_words.push(numbers_to_words(temp_array[1]))
    final_words.push("thousand")
    final_words.push(numbers_to_words(temp_array[2]))
  elsif temp_array.length == 2
    final_words.push(numbers_to_words(temp_array[0]))
    final_words.push("thousand")
    final_words.push(numbers_to_words(temp_array[1]))
  else
    final_words.push(numbers_to_words(temp_array[0]))
  end
  return final_words
  # index = 0
  # index.times() do
  #   numbers_to_words(temp_array[-(index+1)])
  # end
end



# def chop_up(user_value)
#   temp_string = user_value
#   index = temp_string.length
#   index.times() do
#
#   end
