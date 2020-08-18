class NotesController < ApplicationController
  skip_before_action :authorized

  def index
    notes = Note.all
    render json: notes
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def create
    puts params
    note = Note.new(note_params)
    note.save!
    render json: note
  end

  def update
    note = Note.find(params[:id])
      note.update(note_params)
      render json: note
  end

  private

  def note_params
    params.require(:note).permit(:contact_id, :date, :body)
  end
  
end