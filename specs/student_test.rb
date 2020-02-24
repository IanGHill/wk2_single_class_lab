require('minitest/autorun')
require('minitest/reporters')
require_relative('../student.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Dave", "E38")
    assert_equal("Dave", student.get_student_name)
  end

  def test_get_student_cohort
    student = Student.new("Dave", "E38")
    assert_equal("E38", student.get_student_cohort)
  end

  def test_set_student_name
    student = Student.new("Dave", "E38")
    student.set_student_name("Mark")
    assert_equal("Mark", student.get_student_name)
  end

  def test_set_student_cohort
    student = Student.new("Dave", "E38")
    student.set_student_cohort("E39")
    assert_equal("E39", student.get_student_cohort)
  end

  def test_student_can_talk
    student = Student.new("Dave", "E38", true)
    assert_equal("I can talk!", student.student_can_talk)
  end

  def test_fav_prog_lang__Ruby
    student = Student.new("Dave", "E38", true, "Ruby")
    assert_equal("I love Ruby!", student.fav_prog_lang)
  end

  def test_fav_prog_lang__Java
    student = Student.new("Dave", "E38", true)
    assert_equal("I love Java!", student.fav_prog_lang)
  end

end
