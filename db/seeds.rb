# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Admin.delete_all
Admin.create(:email=>'hanqijing@gmail.com', :password=>'123456')
Admin.create(:email=>'foxnewsnetwork@gmail.com', :password=>'wtfisthisbullshit11')

SiteInfo.delete_all
SiteInfo.create(:nick_name=>'ingidio',:name=>'ingidio',:meta_data=>'ingidio')
