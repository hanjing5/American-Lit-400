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
								'hanqijing@gmail.com'
						#		'foxnewsnetwork@gmail.com'
							]
		@url = root_path
		@admins.each do |admin|
    	mail(:to => admin, :subject => "A new subscriber has joined")
		end
  end
end
