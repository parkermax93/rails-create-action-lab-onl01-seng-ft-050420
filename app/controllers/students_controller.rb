class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.new 
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save 
    redirect_to post_path(@student)
  end

end
