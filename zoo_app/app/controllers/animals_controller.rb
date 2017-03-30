class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @result_animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params
    if animal.save
      redirect_to animals_path
    end
  end

  private

  def animal_params
    params.permit(:name, :species, :age, :animaltype)
  end
end
