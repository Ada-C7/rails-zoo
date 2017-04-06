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
    animal.update_attributes(params.require(:animal).permit(:details))

    redirect_to animal_path(animal)
  end

  def destroy
    Animal.find(params[:id]).destroy

    redirect_to animals_path
  end

  private

  def animal_params # strong params
    return params.require(:animal).permit(:name, :age, :species, :gender, :details)
  end
end
