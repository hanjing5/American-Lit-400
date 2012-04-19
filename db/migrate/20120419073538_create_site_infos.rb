class CreateSiteInfos < ActiveRecord::Migration
  def self.up
    create_table :site_infos do |t|
      t.string :name
      t.string :meta_data
      t.string :mailer_email
      t.string :nick_name

      t.timestamps
    end
  end

  def self.down
    drop_table :site_infos
  end
end
