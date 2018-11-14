class Cat
  def initialize(name, age)
    @name = name
    @age = age
  end
# Reader methods
  def name
    @name
  end

  def age
    @age
  end
# Writer methods
  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end
end
