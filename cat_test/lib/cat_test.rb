# class Cat
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# # Reader methods
#   def name
#     @name
#   end
#
#   def age
#     @age
#   end
# # Writer methods
#   def name=(name)
#     @name = name
#   end
#
#   def age=(age)
#     @age = age
#   end
# end

class Cat
  attr_reader(:name, :breed)
  attr_writer(:address)
  attr_accessor(:age)

  def initialize(name, age, breed, address)
    @name = name
    @age = age
    @breed = breed
    @address = address
  end
end
