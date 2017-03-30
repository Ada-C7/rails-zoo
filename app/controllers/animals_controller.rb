class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    puts params[:animal].to_hash

    Animal.create(animal_params)

    redirect_to animals_path
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    animal.update_attributes(animal_params)
    animal.save

    redirect_to animal_path(animal)
  end

private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age, :food, :toy)
  end

end
