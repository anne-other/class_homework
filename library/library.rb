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

def rental_info(title)
  book = book_info(title)
  return book[:rental_details]
end

def add_book(title)
  new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << new_book
end

end
