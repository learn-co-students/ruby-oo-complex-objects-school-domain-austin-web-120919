require "pry" 
# code here!
class School
        # take in, read, write
    attr_accessor :roster
        # giving the instance of my school some default information with the initialize method.
      def initialize(roster) 
        #the roster.length = 0 
        @roster = {}       
      end

      def add_student(student_name, grade)
        @roster.key?(grade) ? @roster[grade] << student_name : @roster.merge!(grade => [student_name])
        # binding.pry
      end    

      def grade(grade)
        @roster[grade] if @roster.has_key?(grade)          
      end

      def sort
        @roster.each do |grade,student_names|
         student_names.sort!
        # binding.pry
        end
    
      end


  
end


# bracket = method ---ruby will create a new key value in the hash if key is not present