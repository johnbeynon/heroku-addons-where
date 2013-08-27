# Create new applicaions tailored for deployment to Heroku
# 
class Heroku::Command::Addons < Heroku::Command::Base
  
  # addons:where ADDON_NAME
  #
  # list applications using addons named like ADDON_NAME
  # 
  # Examples:
  #
  # $ heroku addons:where memcache
  #
  def where

    unless name = shift_argument
      error("Usage: heroku where:addon [ADDON NAME]")
    end

    puts "Searching your applications that are using addons named like '#{name}'..."

    apps = api.get_apps.body

    apps.each do |app|
      addons = api.get_addons(app['name']).body
      addons.each do |addon|
        if addon['name'] =~ /^#{name}*/
          puts "#{app['name']} is using #{addon['name']}"
        end
      end
    end
  end
end
