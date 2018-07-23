class Library

def initialize(books)
  @books = books
end

def books()
  return @books
end

def book_info(title)
  for book in books
    if book[:title] == title
      return book
    end
  end
end

end
