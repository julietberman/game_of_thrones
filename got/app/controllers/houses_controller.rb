class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
  end

  def create
  end

  def show
  @house = House.find(params[:id])
  @characters = @house.characters
  end

  def destroy
  end
end
