require 'pry'
class School
  attr_accessor :school_name, :roster

  def initialize(new_school)
    @school_name = new_school
    @roster = {}
  end

  def add_student(student_value, grade_key)
    if @roster[grade_key] == nil
      @roster[grade_key] = []
      @roster[grade_key] << student_value
    else
      @roster[grade_key] << student_value
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
