require('minitest/autotest')
require('minitest/rg')

require_relative('../code_clan_student.rb')

class TestStudent < Minitest::Test

  def set_up()
    @student = Student.new("Anne", "G7")
  end

end
