require('minitest/autorun')
require('minitest/rg')

require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()

    books = [{
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

    @library = Library.new(books)
  end

end
