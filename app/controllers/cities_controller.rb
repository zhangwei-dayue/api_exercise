class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def update_temp
    city = City.find(params[:id])
    response = RestClient.get "http://v.juhe.cn/weather/index", :params => { :cityname => city.juhe_id, :key => "72fefa4e644ead90f3d3f45f763a741f"}
    data = JSON.parse(response.body)
    city.update( :current_temp => data["result"]["sk"]["temp"])
    redirect_to cities_path
  end
end
