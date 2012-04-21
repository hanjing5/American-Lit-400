class SiteInfosController < ApplicationController

	before_filter :require_login

	def index
		@site_info = SiteInfo.new
		@cur_site_info = SiteInfo.first
		@manage_site_infos = 'active'
		@title = 'Manage Site Infos'
	end

	def update
		@site_info = SiteInfo.first.update_attributes(params[:site_info])
		redirect_to manage_site_infos_path
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
