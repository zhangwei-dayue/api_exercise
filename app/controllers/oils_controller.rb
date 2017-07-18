class OilsController < ApplicationController
  def index
    @oils = Oil.all
  end
end
