class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @all_notes = Note.all
    @my_notes = []
    @other_notes = []

    @all_notes.each do |note|
      if note.user_id == current_user.id
        @my_notes << note
      else
        @other_notes << note
      end
    end
  end

  def create
    @note = Course.create( course_params )
  end

  def course_params
    params.require(:note).permit(:title, :description)
  end
end
