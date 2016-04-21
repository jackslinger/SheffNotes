class CoursesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  #Remove when ajax creating is added
  def new
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
    #Add render or redirect to original page
  end

  def course_params
    params.require(:course).permit(:title)
  end
end
