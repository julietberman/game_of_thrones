class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
    @houses = House.all.map do |house|
      [house.name, house.id]
    end
  end

  def create
    character = Character.new(character_params)
    character.house_id = params[:house_id]
    character.save
    redirect_to characters_path
  end

  def edit
    @character = Character.find(params[:id])
    @houses = House.all.map do |house|
      [house.name, house.id]
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :age, :img_url, :house_id)
  end
end
