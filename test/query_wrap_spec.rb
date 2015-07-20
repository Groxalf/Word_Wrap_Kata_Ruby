require 'rspec'

  #TODO LIST
  # A static class named Wrap or Wrapper that contains a function that format a query
  # The function has to split a text like a word processor does
  # - should return the sentence split by spaces when the column is lower than the sentence
  # - should return the sentence split in the last space when two words fits in the column size
  # EXAMPLES:
  # ("hello how are you", 5) -> "hello\nhow\nare\nyou"
  # ("hello is this", 9) -> "hello is\nthis"


def wrap(query, column)
  if column == 0
    return query
  end
  if query.size > column
    first_word = query[0, column]
    second_word = query[column, query.size - 1]
    return first_word + "\n" + second_word
  end
  query
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
end

puts "wor\nd"