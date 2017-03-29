class AnimalsController < ApplicationController

  def new
    @animal = Animal.new
  end

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def create
    animal = Animal.new(user_params)
    animal.save
    redirect_to animals_path
  end

private
  def user_params
     params.require(:animal).permit(:name, :species, :age)
   end
end
