# code here!
class School

    attr_writer :grade

    def initialize(school_name)
        @roster = {}
        @school_name = school_name
    end

def roster
    @roster
end

def add_student(name, grade)
        @roster[grade] = [] if !@roster[grade]
        @roster[grade] << name
end

def grade(grade_number)
    @roster[grade_number].map{ |memo| memo}
end

def sort
    @roster.each {|key, value| value.sort!}
end

end