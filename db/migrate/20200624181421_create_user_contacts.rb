class CreateUserContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_contacts do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
