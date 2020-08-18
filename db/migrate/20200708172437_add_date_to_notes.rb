class AddDateToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :date, :datetime
  end
end
