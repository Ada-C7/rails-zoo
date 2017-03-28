class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
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

  def show
    @animal = Animal.find(params[:id])
  end

  # can I just call show here to avoid repeating?
  def edit
    @animal = Animal.find(params[:id])
  end

  # can I use animal_params here?
  def update
    animal = Animal.find(params[:id])
    animal.name = params[:animal][:name]
    animal.species = params[:animal][:species]
    animal.age = params[:animal][:age]
    animal.img = params[:animal][:img]
    animal.mood = params[:animal][:mood]
  end

  def destroy
    Animal.destroy(params[:id])
    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :img, :mood)
  end

end
