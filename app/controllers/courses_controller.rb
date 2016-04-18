class CoursesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
    @all_notes = Note.all

    @all_notes.each do |note|
      if note.user_id == current_user.id
        @my_notes ||= []
        @my_notes << note
      else
        @other_notes ||= []
        @other_notes << note
      end
    end
  end
end
