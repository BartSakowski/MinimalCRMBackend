class User < ApplicationRecord
  
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }
  
  has_many :user_contacts
  has_many :contacts, through: :user_contacts
end
