class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
  end
  
  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    adress = params[:adress]
    phone = params[:phone]
    contact = Contact.new({first_name: first_name, last_name: last_name, adress: adress, phone: phone})
    contact.save
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.adress = params[:adress]
    @contact.phone = params[:phone]
    @contact.save
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
  end
  
end
