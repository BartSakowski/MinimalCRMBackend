class ContactsController < ApplicationController
  skip_before_action :authorized
  

  def index
      contacts = Contact.all
      render json: contacts
  end

  def show
      contact = Contact.find(params[:id])
      render json: contact
  end
  
  def create
    puts params
    contact = Contact.new(contact_params)
    contact.save!
    render json: contact
  end

  def update
    contact = Contact.find(params[:id])
      contact.update(contact_params)
      render json: contact
  end

  private

  def contact_params
    params.require(:contact).permit(:user_id, :id, :first_name, :last_name, :phone_number, :email, :client_type, :transaction_status, :referral, :referral_agent, :referral_office, :referral_fee)
  end
  
end