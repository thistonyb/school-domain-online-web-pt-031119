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
    sorted_array = @roster.sort #sorts the keys (not the values) into an array
    sorted_array.each {|elem| @roster[elem[0]] = elem[1].sort} #iterate over array
    # @roster[elem[0]] = elem[1].sort #uses first element (pre sorted) as an address to save sorted array of values(second element)
    @roster
  end
end
