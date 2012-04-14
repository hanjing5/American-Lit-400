class CreateCustomUrls < ActiveRecord::Migration
  def self.up
    create_table :custom_urls do |t|
      t.string :end_point
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :custom_urls
  end
end
