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

  def replace_word(user_string, user_find, user_replace)
    # binding.pry
      if user_string = user_find
        user_string = user_replace
      end
    end
  
end
