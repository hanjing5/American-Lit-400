class SiteInfosController < ApplicationController
	def update
		@site_info = SiteInfo.update_attributes()
		@site_info.save
		redirect_to site_path(@site_info.id)
	end

	def index
		@site_info = SiteInfo.new
		
		@cur_site_info = SiteInfo.first

	end
end
