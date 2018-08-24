class BlogsMailer < ApplicationMailer

  def send_published_post(title)
    @title = title
    @subscribed_users = User.where(status: 1)
    @subscribed_users.each do |e|
    mail( :from => 'lekaknezevic97@gmail.com',
      :to => e.email,
      :subject => title).deliver
      end
  end
end