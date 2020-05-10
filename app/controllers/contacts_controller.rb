class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path, notice: 'Gracias por su mensaje nos comunicaremos pronto'
    else
      flash.now[:error] = 'No se puede enviar el mensaje'
      render :new
    end
  end
end
