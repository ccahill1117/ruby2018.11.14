require ('pry')
require ('rspec')
require ('find_and_replace')

describe ('#replace_word') do
  it ('replaces a word with another word') do
    expect(replace_word("here","here","this")).to(eq("this"))
  end

end
