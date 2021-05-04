require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get'/' do
  erb :super_hero
end

 post'/views/teams' do
   @team = Team.new(params[:teams])
   params[:teams][:members].each do |details|
     Super.Hero.new(details)
   end
   @members = Super_Hero.all
    erb :team
 end

end
