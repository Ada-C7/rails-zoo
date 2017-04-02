class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    a = Animal.create(animal_params)
    a.save
    redirect_to animals_path
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    a = Animal.find(params[:id])
    a.update_attributes(animal_params)
    a.save

    redirect_to animal_path
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy

    redirect_to animals_path
  end

  private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age, :size)
  end

end
