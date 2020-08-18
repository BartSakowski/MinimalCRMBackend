class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :client_type
      t.string :transaction_status
      t.boolean :referral
      t.string :referral_agent
      t.string :referral_office
      t.string :referral_fee

      t.timestamps
    end
  end
end
