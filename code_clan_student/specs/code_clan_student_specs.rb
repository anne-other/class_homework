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

  def test_student_cohort
    assert_equal("G7", @student1.cohort)
  end

  def test_change_name
    @student1.set_name("anne-other")
    assert_equal("anne-other", @student1.name)
  end

end
