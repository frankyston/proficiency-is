class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  layout "template"
  respond_to :html

  def index
    @classrooms = Classroom.paginate(:page => params[:page], :per_page => 10)
    respond_with(@classrooms)
  end

  def show
    respond_with(@classroom)
  end

  def new
    @classroom = Classroom.new
    respond_with(@classroom)
  end

  def edit
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.save
    flash[:success] = "Classroom registered successfully!"
    respond_with(@classroom)
  end

  def update
    @classroom.update(classroom_params)
    flash[:success] = "Classroom successfully updated!"
    respond_with(@classroom)
  end

  def destroy
    @classroom.destroy
    respond_with(@classroom)
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
    end
end
