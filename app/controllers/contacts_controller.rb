class ContactsController < ApplicationController
 layout 'blogs'
  def new
    @contact = Contact.new
    @masthead_picture = 'bg_contact'
    @head_title = "Contact us"
  end

  def send_published_post  
   @blog = Blog.find(params[:id])
   p "*******************************************"
   p @blog 
   p "*******************************************"
  end
 
  def create
      @masthead_picture = 'bg_contact'
      @contact = Contact.new(contact_params)
      @contact.email = current_user.email
    if @contact.save
      ContactsMailer.contact_email(@contact).deliver_now
      redirect_to contact_path(@contact.id)
    else
      render :new
    end
  end
 
  def show
    @masthead_picture = 'bg_contact'
    @contact = Contact.find_by(id: params[:id])
  end
 
  private 
 
  def contact_params
    params.require(:contact).permit(
      :subject,
      :name,
      :email,
      :message
    )
  end
end
