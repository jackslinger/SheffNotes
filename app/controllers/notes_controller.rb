class NotesController < ApplicationController
  load_and_authorize_resource
  before_action :set_note, only: [:show, :edit, :update]

  def index
    @notes = Note.all # restrict to user in future
  end

  def show
  end

  def new
    @note.course = Course.find(params[:course])
  end

  def edit
  end

  def my_notes
  end

  def create
    @courses = Course.all
    @note = Note.new(note_params)
    @note.user = current_user if current_user
    puts 'foo'
    puts current_user
    puts @note.valid?
    if @note.save
      flash[:notice] = 'Your note has been saved successfully'
      redirect_to @note.course
    else
      flash[:alert] = 'Please fix the errors in the form'
      render :new
    end
  end

  def update
    @note.update(note_params)
  end

  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:document, :course_id, :title)
    end

end
