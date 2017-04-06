class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find params[:id]
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params
    unless animal.id == nil
      redirect_to animals_path #this will always default to the GET verb unless otherwise specified
    end
  end

  def destroy
    Animal.destroy(params[:id])
    redirect_to animals_path
  end


end


private

def animal_params #this is called a strong param, it is a technique that limits what parameters are used in certain methods
  params.require(:animal).permit(:name, :age, :species, :fave_food)
end
