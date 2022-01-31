class StudentsController < ApplicationController

  def index
    if request.query_parameters[:name]
    students = Student.all.where('first_name or last_name = ?', params[:name].capitalize())
    render json: students
    else 
      students = Student.all
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
