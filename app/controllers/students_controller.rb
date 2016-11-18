class StudentsController < ApplicationController
  # enables user form display to user to input info for new student
  def new
    @student = Student.new
    @students = Student.all
  end

  # create the record in the database
  def create
#    @student = Student.new(params[:student])
    @student = Student.new(student_params)
    if @student.save
      redirect_to new_student_path
    end
  end


  private

  def student_params
    params.require(:student).permit(:name, :url)
  end
end
