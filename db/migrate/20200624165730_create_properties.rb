class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address_line_one
      t.string :address_line_two
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
