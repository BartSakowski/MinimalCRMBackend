class UserContact < ApplicationRecord
  belongs_to :users
  belongs_to :contacts
end
