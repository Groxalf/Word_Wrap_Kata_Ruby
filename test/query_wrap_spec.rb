require 'rspec'

  #TODO LIST
  # A static class named Wrap or Wrapper that contains a function that format a query
  # The function has to split a text like a word processor does
  # - should return empty string when an empty string is the query input
  # - should return the word when column is zero
  # - should return the word when column number is higher than the word
  # - should return the word split when the column is lower than the word
  # - should return the sentence split by spaces when the column is lower than the sentence
  # - should return the sentence split in the last space when two words fits in the column size
  # EXAMPLES:
  # ("", 0) -> ""
  # ("hello", 0) -> "hello"
  # ("hello", 5) -> "hello"
  # ("hello", 3) -> "hel\nlo"
  # ("hello how are you", 5) -> "hello\nhow\nare\nyou"
  # ("hello is this", 9) -> "hello is\nthis"


def wrap(query, column)
  query
end

describe 'Wrapper' do
  it 'should return empty string when an empty string is the query input' do
    expect(wrap('', 0)).to(eq(''))
  end

  it 'should return the word when column is zero' do
    expect(wrap('word', 0)).to(eq('word'))
  end
end