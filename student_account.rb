class StudentAccount

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talking
    @cohort == 'E23' ? "I am in cohort E23" : "I am in another cohort"
  end

  def favourite_language(name)
    return "I love #{name}"
  end

end
