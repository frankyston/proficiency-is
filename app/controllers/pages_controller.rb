class PagesController < ApplicationController
	layout "template"
  def dashboard
  	@students = Student.all.order("id desc")
  	@courses = Course.all.order("id desc")
  	@classrooms = Classroom.all.order("id desc")
  end
end
