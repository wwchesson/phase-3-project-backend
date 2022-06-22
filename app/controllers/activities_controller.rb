require "pry"

class ActivitiesController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/activities" do
    activity = Activity.all
    activity.to_json
  end

  post "/activities" do 
    activity = Activity.create(activity: params[:activity], day_of_week: params[:day_of_week], instructor: params[:instructor], resident_id: params[:resident_id])
    activity.to_json
  end
  


end