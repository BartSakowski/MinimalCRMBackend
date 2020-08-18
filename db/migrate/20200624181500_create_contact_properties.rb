class CreateContactProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_properties do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
