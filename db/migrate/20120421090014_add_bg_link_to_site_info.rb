class AddBgLinkToSiteInfo < ActiveRecord::Migration
  def self.up
		add_column :site_infos, :bg_img_link, :string
  end

  def self.down
		remove_column :site_infos, :bg_img_link
  end
end
