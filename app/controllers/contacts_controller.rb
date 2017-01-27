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
    middle_name = params[:middle_name]
    last_name = params[:last_name]
    biography = params[:biography]
    adress = params[:adress]
    longitude = params[:longitude]
    latitude = params[:latitude]
    phone = params[:phone]
    contact = Contact.new({first_name: first_name, middle_name: middle_name, last_name: last_name, biography: biography, adress: adress, longitude: longitude, latitude: latitude, phone: phone})
    contact.save
    flash[:success] = "Contact Created"
    redirect_to "/contacts/#{contact.id}"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update    
    contact = Contact.find_by(id: params[:id])
    contact.first_name = params[:first_name]
    contact.middle_name = params[:middle_name]
    contact.last_name = params[:last_name]
    biography = params[:biography]
    contact.adress = params[:adress]
    contact.longitude = params[:longitude]
    contact.latitude = params[:latitude]
    contact.phone = params[:phone]
    contact.save
    flash[:success] = "Contact Updated"
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:success] = "Contact Destroyed"
    redirect_to "/contacts"
  end
  
end
