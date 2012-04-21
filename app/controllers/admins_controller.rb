class AdminsController < ApplicationController
	def manage_urls
		if current_admin
			redirect_to custom_urls_path
		else
			redirect_to new_admin_session_path
		end
	end

	def manage_subs
		if current_admin
			@manage_subs = 'active'
			@title = 'Manage Subscribers'
			@subscribers = Subscriber.all
		else
			redirect_to new_admin_session_path
		end
	end

	def manage_site_infos
		if current_admin
			redirect_to site_path
		else
			redirect_to new_admin_session_path
		end
	end
end
