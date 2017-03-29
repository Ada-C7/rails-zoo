class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params

    unless animal.id == nil
      redirect_to animals_path
    end
  end

  def update
    animal = Animal.find(params[:id])
    animal.name = params[:animal][:name]
    animal.species = params[:animal][:species]
    animal.age = params[:animal][:age]

    if animal.save
      redirect_to animal_path(animal.id)
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
