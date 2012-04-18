class PagesController < ApplicationController
  @@toolbar_hash = {:about => '', :promotion => '', :home => '', :caster => '', :channel => '', :partner=>'', :leader=>'', :contact=>'', :about=>''}

  def home
  end

	def index
	end

	def show
	end

  def contact 
		@contact = 'active'
		@location = 'Contact'
		@toolbar = @@toolbar_hash.clone
		@toolbar[:contact] = 'active'
  end

  def about
		@about = 'active'
		@location = 'About'
		@toolbar = @@toolbar_hash.clone
		@toolbar[:about] = 'active'
	end

	def settings
		if current_admin
			redirect_to custom_urls_path
		end
	end

	def redirections
		@url = params[:custom_url]
		
		@custom_url = CustomUrl.find_by_end_point(@url)
		
		if @custom_url
			redirect_to @custom_url.url
		else
			redirect_to root_path
		end
		#if @url == 'manga'
		#	redirect_to 'http://cold-frost-9554.heroku.com'
		#end
	end

end
