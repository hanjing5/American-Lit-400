class PagesController < ApplicationController

  def home
  end

	def index
		@title = 'Home'
	end

	def show
	end

  def contact 
  end

  def about
	end

	def redirections
		@url = params[:custom_url]
		@custom_url = CustomUrl.find_by_end_point(@url)
		
		if @custom_url
			redirect_to @custom_url.url
		else
			redirect_to root_path
		end
	end

end
