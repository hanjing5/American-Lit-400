class CustomUrlsController < ApplicationController
  def new
		@custom_url = CustomUrl.new
  end

	def create
		@custom_url = CustomUrl.new(params[:custom_urls])
		puts 'test'
		puts params[:custom_urls]
		puts params[:custom_urls]
		puts params[':custom_urls']
		puts params[:url]
		puts params
		puts params.keys
		puts params['authenticity_token']
		puts 'test'
		if @custom_url.save
			redirect_to custom_urls_path
		else 
			redirect_to new_custom_url_path
		end
	end

	def update
	end

	def index
		@custom_urls = CustomUrl.all
	end

	def show
	end
end
