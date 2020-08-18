class RemoveDateFromNotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :notes, :date, :string
  end
end
