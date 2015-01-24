class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  layout "template"
  respond_to :html

  def index
    @students = Student.paginate(:page => params[:page], :per_page => 10)
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    flash[:success] = "Student registered successfully!"
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    flash[:success] = "Student successfully updated!"
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
