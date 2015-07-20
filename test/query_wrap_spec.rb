require 'rspec'

  #TODO LIST
  # A static class named Wrap or Wrapper that contains a function that format a query
  # The function has to split a text like a word processor does
  # - should return the sentence split in the last space when two words fits in the column size
  # EXAMPLES:
  # ("hello is this", 9) -> "hello is\nthis"


def wrap(query, column)
  if column == 0
    return query
  end
  if query.size > column
    cut_position = query[0, column + 1].rindex(' ')
    if cut_position.eql? nil
      first_word = query[0, column]
      second_word = query[column, query.size - 1]
      return first_word + "\n" + second_word
    end
    first_word = query[0, cut_position]
    second_word = wrap(query[cut_position + 1, query.size - 1], column)
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

  it 'should return the sentence split by spaces when the column is lower than the sentence' do
    expect(wrap('hello how are you', 5)).to(eq("hello\nhow\nare\nyou"))
  end

end
