class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @show_animal = Animal.find(params[:id])
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

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])

    animal.name = animal_params[:name]
    animal.species = animal_params[:species]
    animal.age = animal_params[:age]
    animal.img_url = animal_params[:img]

    if animal.save
      redirect_to animal_path(animal.id)
    end
  end

  def destroy
    Animal.destroy(params[:id])

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :img)
  end

end
