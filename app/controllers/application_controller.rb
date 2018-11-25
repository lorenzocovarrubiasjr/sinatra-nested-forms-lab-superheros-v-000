require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    
    erb :team
  end 
  
  post "/teams" do 
    @name = params[:team][:name]
    @team = params[:motto]
    @member1_name = params[:member1_name]
    @member1_power = params[:member1_power]
    @member1_bio = params[:member1_bio]
    @member2_name = params[:member2_name]
    @member2_power = params[:member2_power]
    @member2_bio = params[:member2_bio]
    @member3_name = params[:member3_name]
    @member3_power = params[:member3_power]
    @member3_bio = params[:member3_bio]
    
  end 
  
  
  

end
