class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      SendinblueContactCreator.call(@contact.email)
      flash[:notice] = "Vous êtes bien inscrit, merci !"
      redirect_back(fallback_location: root_path)
    else
      @contact.errors.messages[:email].each { |message| flash[:alert] = message }
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end
end
