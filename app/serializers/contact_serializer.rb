class ContactSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :user_id, :id, :first_name, :last_name, :phone_number, :email, :client_type, :transaction_status, :referral, :referral_agent, :referral_office, :referral_fee
end
