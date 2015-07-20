class Wrapper

  def self.wrap(query, column)
    return query if column == 0
    if query.size > column
      return no_space_query_divider(column, query) if get_cut_position(column, query).eql? nil
      return middle_space_query_divider(column, get_cut_position(column, query), query)
    end
    query
  end

  def self.middle_space_query_divider(column, cut_position, query)
    first_word = query[0, cut_position]
    second_word = wrap(query[cut_position + 1, query.size - 1], column)
    return first_word + "\n" + second_word
  end

  def self.no_space_query_divider(column, query)
    first_word = query[0, column]
    second_word = wrap(query[column, query.size - 1], column)
    return first_word + "\n" + second_word
  end

  def self.get_cut_position(column, query)
    query[0, column + 1].rindex(' ')
  end

end