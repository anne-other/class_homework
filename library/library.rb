class Library

def initialize(books)#()
  @books = books
  #@books = []
end

def add_book(book)
  @books.push(book)
end

def books()
  return @books
end

def book_info(title)
  for book in @books
    if book[:title] == title
      return book
    end
  end
end

def rental_info(title)
  book = book_info(title)
  return book[:rental_details]
end

def add_book_by_title(title)
  new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << new_book
end

def change_rental_info(title, student, due_date)
    book = book_info(title)
    book[:rental_details][:student_name] = student
    book[:rental_details][:date] = due_date
end

end
