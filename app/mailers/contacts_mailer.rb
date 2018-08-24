class ContactsMailer < ApplicationMailer

  def contact_email(contact)
    @contact = contact 
    mail( :from => 'oo@gmail.com',
    	:to => 'lekaknezevic97@gmail.com',
    :subject => 'Personal Contact Info Filled Out' )
  end

  
  end