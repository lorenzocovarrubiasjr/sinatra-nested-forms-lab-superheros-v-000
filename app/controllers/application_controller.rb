require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    
    erb :team
  end 
  
  post "/teams" do 
    @name = params[:team][:name]
    @team = params[:team][:motto]
    
    
  end 
  
  
  

end
