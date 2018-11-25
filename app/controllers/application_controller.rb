require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    
    erb :team
  end 
  
  post "/teams" do 
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @member1_name = params[:team][:members][][:name]
    @member1_power = params[:team][:members][][:power]
    @member1_bio = params[:team][:members][][:bio]
    @member2_name = params[:team][:members][][:name]
    @member2_power = params[:team][:members][][:power]
    @member2_bio = params[:team][:members][][:bio]
    @member3_name = params[:team][:members][][:name]
    @member3_power = params[:team][:members][][:power]
    @member3_bio = params[:team][:members][][:bio]
    
    
    erb :super_hero
    
  end 
  
  
  

end
