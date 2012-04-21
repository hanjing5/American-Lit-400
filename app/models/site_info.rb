class SiteInfo < ActiveRecord::Base
	attr_accessible :meta_data, :nick_name, :name, :bg_img_link
end

# == Schema Information
#
# Table name: site_infos
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)
#  meta_data    :string(255)
#  mailer_email :string(255)
#  nick_name    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

