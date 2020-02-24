class Student

  # attr_accessor :student_name, :student_cohort

  def initialize(student_name, student_cohort, can_talk = false, fav_prog_lang = "Java")
    @student_name = student_name
    @student_cohort = student_cohort
    @can_talk = can_talk
    @fav_prog_lang = fav_prog_lang
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @student_cohort
  end

  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_student_cohort(new_student_cohort)
    @student_cohort = new_student_cohort
  end

  def student_can_talk
    @can_talk ? "I can talk!" : ""
  end

  def fav_prog_lang
    return "I love #{@fav_prog_lang}!"
  end

end
