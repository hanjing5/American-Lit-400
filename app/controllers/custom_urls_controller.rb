class CustomUrlsController < ApplicationController
  def new
		@custom_url = CustomUrl.new
  end

	def create
		@url = validate_redirect_url(params[:custom_urls][:url])
		params[:custom_urls][:url] = @url
		puts @url
		@custom_url = CustomUrl.new(params[:custom_urls])


		if @custom_url.save
			redirect_to custom_urls_path
		else 
			redirect_to new_custom_url_path
		end
	end

	def update
	end

	def index
		@manage_urls = 'active'
		@title = 'Manage URLs'
		@c_urls = CustomUrl.all
		@custom_url = CustomUrl.new
	end

	def show
	end

	def destroy
		@custom_url = CustomUrl.find(params[:id])
		@custom_url.delete
		redirect_to custom_urls_path
	end

	def validate_redirect_url(str)
		if str[0..6] == 'http://' or str[0..7] == 'https://'
			return str
		else
			return 'http://' + str
		end
	end
end
