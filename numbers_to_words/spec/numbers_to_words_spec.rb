require ('rspec')
require ('numbers_to_words')

  describe ("numbers_to_words") do
    it("returns numbers 1 through 9") do
    expect(numbers_to_words(2)).to(eq("two"))
    end

    it("returns numbers 1 through 10") do
    expect(numbers_to_words(10)).to(eq("ten"))
    end

    it("returns numbers 1 through 19") do
    expect(numbers_to_words(19)).to(eq("nineteen"))
    end



  end
