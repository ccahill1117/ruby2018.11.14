# class Cat
#   attr_reader(:name, :breed)
#   attr_writer(:address)
#   attr_accessor(:age)
#
#   def initialize(name, age, breed, address)
#     @name = name
#     @age = age
#     @breed = breed
#     @birthplace = birthplace
#   end
require('pry')

class FindScript
  attr_accessor(:user_string, :user_find, :user_replace)

  def initialize(user_string, user_find, user_replace)
    @user_string = user_string
    @user_find = user_find
    @user_replace = user_replace
    return user_string
  end

# doesn't change new_FindScript.user_string
  # def replace_word(user_find, user_replace)
  #   # binding.pry
  #     if user_string == user_find
  #       user_string = user_replace
  #     end
  #   end
#does change .user_string of the object which method is called on
  def replace_word!(user_find, user_replace)
    if self.user_string == user_find
      self.user_string = user_replace
    end
  end

end





def runScript()
  puts "enter a word"
  user_word = gets
  user_object = FindScript.new(user_word,"","")
  puts "enter find and replace words"
  user_find2 = gets
  user_replace2 = gets
  user_object.replace_word!(user_find2,user_replace2)
end
