require "pry"

class ResidentsController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/residents" do
      residents = Resident.all 
      residents.to_json
    end
  
    get "/residents/:id" do
      resident = Resident.find(params[:id])
      resident.to_json(include: :activities)
    end
  
    post "/residents" do
      resident = Resident.create(name: params[:name], ssn: params[:ssn], age: params[:age], email: params[:email], needs: params[:needs], interests: params[:interests])
      resident.to_json
    end
  
    patch "/residents/:id" do
      resident = Resident.find(params[:id])
      resident.update(name: params[:name], ssn: params[:ssn], age: params[:age], email: params[:email], needs: params[:needs], interests: params[:interests])
      resident.to_json
    end
  
    delete "/residents/:id" do
      resident = Resident.find(params[:id])
      resident.destroy
      resident.to_json
    end

end