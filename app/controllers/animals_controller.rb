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
    # id = params[:id]to_i
    # @animal= Animal.find(id)
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])
    animal.update_attributes(animal_params)
    animal.save
  end

  def destroy
    Object.find(params[:id]).destroy
  end

private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end
end
