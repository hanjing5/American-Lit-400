class CustomUrlsController < ApplicationController
  def new
		@custom_url = CustomUrl.new
  end

	def create
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
		@custom_urls = CustomUrl.all
	end

	def show
	end

	def destroy
		@custom_url = CustomUrl.find(params[:id])
		@custom_url.delete
		redirect_to custom_urls_path
	end
end
