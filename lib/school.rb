# code here!
# def sort
#     self.roster.each do |grade, student_arr|
#         student_arr.sort 
#     end
# end

class School 
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {} 
    end 

    def add_student(student, grade)
        if roster.has_key?(grade) 
            roster[grade] << student 
        else roster[grade] = [student]
        # if @roster[grade] == nil
        #     @roster[grade] = []
        # end
        # @roster[grade] << student
        end 
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |grade, student|
           student.sort!
        end
    end

end

