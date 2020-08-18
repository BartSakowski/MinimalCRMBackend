class Contact < ApplicationRecord
  has_many :user_contacts
  has_many :users, through: :user_contacts
  has_many :notes
end
