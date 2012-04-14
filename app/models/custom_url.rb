class CustomUrl < ActiveRecord::Base
	attr_accessible :end_point, :url
end

# == Schema Information
#
# Table name: custom_urls
#
#  id         :integer(4)      not null, primary key
#  end_point  :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

