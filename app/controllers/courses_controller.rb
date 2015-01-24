class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  layout "template"
  respond_to :html

  def index
    @courses = Course.paginate(:page => params[:page], :per_page => 10)
    respond_with(@courses)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save
    flash[:success] = "Course registered successfully!"
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    flash[:success] = "Course successfully updated!"
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :status)
    end
end
