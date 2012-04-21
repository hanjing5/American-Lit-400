class SiteInfosController < ApplicationController
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
end
