require ('rspec')
require ('scrabble_score')

  describe ('#scrabble_score') do
    it("returns a scrabble score for a letter") do
    expect(scrabble_score("A")).to(eq(1))
    end


    it("it returns a scrabble score for two letters") do
    expect(scrabble_score("HI")).to(eq(5))
    end

    it("it returns a scrabble score for multiple letters") do
    expect(scrabble_score("QUIZ")).to(eq(22))
    end

    it("it returns a scrabble score for repeated letter words") do
    expect(scrabble_score("QUEEN")).to(eq(14))
    end

  end
# end
