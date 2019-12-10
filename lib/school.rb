class School
    attr_accessor :roster
    attr_reader :name


    def initialize(name,roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name,grade)
        if @roster.key?(grade)
            @roster[grade] << student_name
        else   
            self.roster.merge!(grade => [student_name])
        end
    end

    def grade(sought_grade)
        @roster[sought_grade]
    end

    def sort
        @roster.each{|key,value| @roster[key] = value.sort!}
    end

end