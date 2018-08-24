class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  
 

  def send_published_post(title)
    @title = title
    @subscribed_users = User.where(status: 1)
    emails = @subscribed_users.collect(&:email)
    emails.each do |e|
    mail( :from => 'lekaknezevic97@gmail.com',
      :to => e,
      :subject => title).deliver_now
    end
  end


end
