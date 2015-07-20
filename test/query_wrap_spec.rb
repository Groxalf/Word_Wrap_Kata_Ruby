require 'rspec'
require_relative '../wrapper'
  # A static class named Wrap or Wrapper that contains a function that format a query
  # The function has to split a text like a word processor does

def wrap(query, column)
  Wrapper.wrap(query, column)
end

describe 'Wrapper' do
  it 'should return empty string when an empty string is the query input' do
    expect(wrap('', 0)).to(eq(''))
  end

  it 'should return the word when column is zero' do
    expect(wrap('word', 0)).to(eq('word'))
  end

  it 'should return the word when column number is higher than the word' do
    expect(wrap('word', 5)).to(eq('word'))
  end

  it 'should return the word split when the column is lower than the word' do
    expect(wrap('word', 3)).to(eq("wor\nd"))
  end

  it 'should return the sentence split by spaces when the column is lower than the sentence' do
    expect(wrap('hello how are you', 5)).to(eq("hello\nhow\nare\nyou"))
  end

  it 'should return the sentence split in the last space when two words fits in the column size' do
    expect(wrap('hello is this', 9)).to(eq("hello is\nthis"))
  end

  it 'should return the sentence split when there are no spaces' do
    expect(wrap('helloisthis', 2)).to(eq("he\nll\noi\nst\nhi\ns"))
  end

end
