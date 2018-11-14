require('rspec')
require('cat_test')
#
#
# describe(Cat) do
#   describe("#name") do
#     it("returns a cat's name") do
#       cat = Cat.new("Milo", 15)
#       expect(cat.name="Milo")
#     end
#   end
#
#   describe("#name") do
#     it("changes a cat's name") do
#       cat = Cat.new("Milo", 15)
#       cat.name = "Kiki"
#       expect(cat.name="Kiki")
#     end
#   end
# end
describe(Cat) do
  describe("#name") do
    it("returns a cat's name") do
      cat = Cat.new("Milo", 15)
      expect(cat.name()).to(eq("Milo"))
    end
  end

  describe("#name=") do
    it("changes a cat's name") do
      cat = Cat.new("Milo", 15)
      cat.name = "Kiki"
      expect(cat.name()).to(eq("Kiki"))
    end
  end
end
