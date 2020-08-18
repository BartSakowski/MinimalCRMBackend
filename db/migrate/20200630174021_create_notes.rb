class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :contact, null: false, foreign_key: true
      t.string :date
      t.text :body

      t.timestamps
    end
  end
end
