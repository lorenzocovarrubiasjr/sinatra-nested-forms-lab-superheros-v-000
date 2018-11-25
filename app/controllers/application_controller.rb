require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    
    erb :team
  end 
  
  post "/teams" do 
    @name = params[:name]
    @team = params[:team]
    
    
  end 
  
  
  

end
