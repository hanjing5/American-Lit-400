class AdminsController < ApplicationController
	def manage_urls
		if current_admin
			redirect_to custom_urls_path
		end
	end

	def manage_subs
		if current_admin
			@subscribers = Subscriber.all
		end
	end
end
