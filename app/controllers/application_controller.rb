require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    
    erb :team
  end 
  
  post "/teams" do 
    @name = params[:team][:name]
    @team = params[:team][:motto]
    @member1_name = params[:team][:member1_name]
    @member1_power = params[:team][:member1_power]
    @member1_bio = params[:team][:member1_bio]
    @member2_name = params[:team][:member2_name]
    @member2_power = params[:team][:member2_power]
    @member2_bio = params[:team][:member2_bio]
    @member3_name = params[:team][:member3_name]
    @member3_power = params[:team][:member3_power]
    @member3_bio = params[:team][:member3_bio]
    
  end 
  
  
  

end
