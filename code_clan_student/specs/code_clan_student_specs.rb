require( 'minitest/autorun' )
require( 'minitest/rg' )

require_relative( '../code_clan_student.rb' )

class TestStudent < MiniTest::Test

  def setup()
    @student1 = Student.new("Anne", "G7")
  end

  def test_student_name
    result = @student1.name()
    assert_equal("Anne", result)
  end

end
