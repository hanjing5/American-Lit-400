class SubscribersController < ApplicationController
	
	
	before_filter :require_login
  def create
    @subscriber = Subscriber.new(params[:subscriber])
    @success = false

    if @subscriber.save
			#SubMailer.welcome_email(@subscriber).deliver
			SubMailer.sub_email(@subscriber).deliver
			puts 'We saved the subscriber!'
      @success = true
      @msg = 'Thank you for signing up! You will be the first to know when we launch.'
          
      flash['msg'] = @msg
      respond_to do |format|
        format.js
        format.html {redirect_to root_path}
				return
      end 
    else
      @msg = 'Failed!'
      flash['msg'] = @msg
      respond_to do |format|
        format.js
        format.html {redirect_to root_path}
      end 
    end 
  end 

  private
 
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_admin_session_path
    end
  end
 
  # The logged_in? method simply returns true if the user is logged
  # in and false otherwise. It does this by "booleanizing" the
  # current_user method we created previously using a double ! operator.
  # Note that this is not common in Ruby and is discouraged unless you
  # really mean to convert something into true or false.
  def logged_in?
    !!current_admin
  end

end

