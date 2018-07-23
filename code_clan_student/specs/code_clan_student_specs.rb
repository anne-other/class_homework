require( 'minitest/autorun' )
require( 'minitest/rg' )

require_relative( '../code_clan_student.rb' )

class TestStudent < MiniTest::Test

  def setup()
    @student1 = Student.new("Anne", "G7")
  end

  def test_student_name()
    assert_equal("Anne", @student1.name())
  end

  def test_student_cohort()
    assert_equal("G7", @student1.cohort)
  end

  def test_change_name()
    @student1.set_name("anne-other")
    assert_equal("anne-other", @student1.name())
  end

  def test_change_cohort()
    @student1.set_cohort("E21")
    assert_equal("E21", @student1.cohort())
  end

  def test_say()
    result = @student1.say("I can talk")
    assert_equal("I can talk", result)
  end

  def test_say_favourite_language()
    result = @student1.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
