class CoursesController < ApplicationController
  load_and_authorize_resource

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new
    @course.title = 'New Course'
  end

end
