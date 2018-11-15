require ('pry')
require ('rspec')
require ('find_and_replace')

user_object = FindScript.new("here","","")


describe ('#replace_word') do
  #Non-destructive repalce tests
  it ('non-destructive replace finds a word and returns it') do
    expect(user_object.replace_word("here","this")).to(eq("this"))
  end

  it ('non-destructive replace finds a word and returns it') do
    expect(user_object.replace_word("there","this")).to(eq("there"))
  end

  it ('non-destructive replace finds a word and returns it') do
    expect(user_object.replace_word("this","that")).to(eq("that"))
  end
end

describe ('#replace_word!') do
  #Destructive replace! tests
  it ('destructive replaces a word with another word') do
    expect(user_object.replace_word!("here","this")).to(eq("this"))
  end

  it ('destructive replaces a word with another word') do
    expect(user_object.replace_word!("there","this")).to(eq("there"))
  end

  it ('destructive replaces a word with another word') do
    expect(user_object.replace_word!("this","that")).to(eq("that"))
  end
end
