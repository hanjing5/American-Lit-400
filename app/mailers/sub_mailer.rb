class SubMailer < ActionMailer::Base
  default :from => "admin@ingidio.com"

  def welcome_email(subscriber)
    @sub = subscriber
    @url  = "http://example.com/login"
    mail(:to => subscriber.email, :subject => "Welcome to My Awesome Site")
  end

  def sub_email(subscriber)
    @sub = subscriber
		@count = Subscriber.all.count
		@admins = [
								'hanqijing@gmail.com',
								'foxnewsnetwork@gmail.com'
							]
		@admins = Admin.all

		@site_info = SiteInfo.first

		@url = @site_info.nick_name

		@admins.each do |admin|
    	mail(:to => admin.email, :subject => "A new subscriber has joined #{@url}")
		end
  end
end
