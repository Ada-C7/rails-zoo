class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
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

    redirect_to animals_path(animal)
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy

    redirect_to animals_path
  end

  private
  def animal_params
    return params.require(:animal).permit(:name, :species, :age, :weight)
  end
end
