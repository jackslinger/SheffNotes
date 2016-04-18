class NotesController < ApplicationController
  load_and_authorize_resource

  def show
  end

  def new
  end

  def edit
  end

  def create
    @note = Note.create( note_params )
  end

  def update
    @note = Note.create( note_params )
  end

  private

  def note_params
    params.require(:note).permit(:document)
  end
end
