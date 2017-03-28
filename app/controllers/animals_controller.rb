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
    animal = Animal.create animal_params
    redirect_to animals_path unless animal.id == nil
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    redirect_to animal_path if animal.update(animal_params)
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end
end
