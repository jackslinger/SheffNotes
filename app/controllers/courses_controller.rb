class CoursesController < ApplicationController
  before_filter :set_course, only: [:show, :update]

  def show
  end

  def add
    @department = Department.find(params[:department_id])
    @course = Course.new
    @course.department_id = @department.id
    @course.title = 'Unnamed Course'
    @course.save
  end

  def update
    @course.update(course_params)
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:title)
    end
end
