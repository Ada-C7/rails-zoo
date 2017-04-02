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
    @animal = Animal.find(params[:id].to_i)
  end

  def edit
  end

  def update
  end

  private

  def animal_params # strong params
    return params.require(:animal).permit(:name, :age, :species, :gender, :details)
  end
end
