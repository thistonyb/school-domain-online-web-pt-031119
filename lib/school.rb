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
<<<<<<< HEAD
    @roster.each {|key, value| value.sort!}
=======
    sorted_array = @rosters.to_a #sorts the keys (not the values) into an array
    sorted_array.each {|elem| @roster[elem[0]] = elem[1].sort} #iterate over array[[7, [name, name]], [8, [name, name]] ect.]
     @roster[elem[0]] = elem[1].sort #uses first element (pre sorted) as an address to save sorted array of values(second element)
    @roster
>>>>>>> 186c51babe3b80bd8bb3a8f73eeafcf701a79e7a
  end
  #def sort
  #  @roster.each do |key, value|
  #    value.sort!
  #  end
#  end
end
