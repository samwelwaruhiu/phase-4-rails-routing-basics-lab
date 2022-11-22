class StudentsController < ApplicationController
    def index
       stude = Student.all
       render json: stude
    end 
     
    def grades
       grade = Student.all.order('grade desc')
       render json: grade
    end

    def highest_grade

        hugh = Student.all.order('grade asc').last
        render json: hugh
    end
end
