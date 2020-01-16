require 'pry'
class School
    attr_accessor :name, :roster
  def initialize(name)
    @roster = Hash.new
  end

  def add_student(name,grade)
    if @roster[grade] != nil
    @roster[grade] << name
    else
      @roster["#{grade}".to_i] = [] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade|
      sort = grade[1].sort 
      # binding.pry
      @roster[grade[0]] = sort
    end
  end

end