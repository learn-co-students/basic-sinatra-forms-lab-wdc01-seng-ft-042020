require 'sinatra/base'
require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        set :views, "views"
        set :public_dir, "public"
    end
    
    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @team_name = params["name"]
        @coach = params["coach"]
        @point_guard = params["pg"]
        @shooting_guard = params["sg"]
        @small_forward = params["sf"]
        @power_forward = params["pf"]
        @center = params["c"]
        erb :team
    end

end
