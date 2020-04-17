class ContactsController < ApplicationController
	skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Merci pour votre message, il nous a bien été envoyé.'
      redirect_to new_contact_path
    else
      flash[:alert] = "Erreur dans l'envoi du message."
      render :new
    end
  end

  private

  def contact_params
  	params.require(:contact).permit(:name, :email, :message, :captcha)
	end

end
