class Subscriber < ActiveRecord::Base
	attr_accessible :email, :type
end

# == Schema Information
#
# Table name: subscribers
#
#  id         :integer(4)      not null, primary key
#  email      :string(255)
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

