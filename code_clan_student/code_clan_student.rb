class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def say(words)
    return words.to_s
  end

  def say_favourite_language(language)
    return say("I love #{language}")
  end

end
