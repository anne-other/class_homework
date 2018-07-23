require('minitest/autorun')
require('minitest/rg')

require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()

    @books = [{
      title: "The Lord Of The Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/18"
        }
      },
      {
        title: "A Song Of Ice And Fire",
        rental_details: {
          student_name: "Anne",
          date: "17/10/18"
          }
        },
        {
          title: "Elantris",
          rental_details: {
            student_name: "Richard",
            date: "19/12/18"
          }
        }
    ]

    @library = Library.new(@books)
  end

  def test_get_books()
    result = @library.books()
    assert_equal(3, result.size)
  end

  def test_book_info()
    result = @library.book_info("The Lord Of The Rings")
    assert_equal(@books[0], result)
  end

  def test_rental_info()
    result = @library.rental_info("A Song Of Ice And Fire")
    compare = @books[1][:rental_details]
    assert_equal(compare, result)
  end

  def test_add_book()
    @library.add_book("Prince Of Thorns")
    result = @library.books
    assert_equal(4, result.size)
  end

  def test_change_rental_info()
    @library.change_rental_info("The Lord Of The Rings", "Samwise", "3434 of the second age")
    result = @library.book_info("The Lord Of The Rings")
    compare = {
      title: "The Lord Of The Rings",
      rental_details: {
        student_name: "Samwise",
        date: "3434 of the second age"
      }
    }
    assert_equal(compare , result)
  end

end
