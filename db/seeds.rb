# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Contact.destroy_all


user_a = User.create!(id: 5, email: "bart.sakowski@gmail.com", password_digest: "password", first_name: "Bart", last_name: "Sakowski")
user_b = User.create!(id: 6, email: "jim@bo.com", password_digest: "fun", first_name: "Jim", last_name: "Bo")


contact_a = Contact.create!(user_id: 5, first_name: "Ben", last_name: "Rogers", phone_number: "815-345-6789", email: "ben@rogers.com", client_type: "buyer", transaction_status: "New Lead", referral: false, referral_agent: "n/a", referral_office: "n/a", referral_fee: "n/a" )
contact_b = Contact.create!(user_id: 5, first_name: "Jim", last_name: "Bo", phone_number: "773-428-1234", email: "jim@bo.com", client_type: "seller", transaction_status: "Offer Accepted", referral: true, referral_agent: "Jim Jimson", referral_office: "Kale", referral_fee: "40%" )

