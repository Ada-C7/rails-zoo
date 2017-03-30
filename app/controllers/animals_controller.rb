class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end
  def create
    animal = Animal.create animal_params
    if animal.save
      redirect_to animals_path
    else
      render :new
    end
  end
  def index
    @animals = Animal.all
  end
  def show
    @animal = Animal.find(params[:id])
  end
  def edit
    @animal = Animal.find(params[:id])
  end
  def update
    animal = Animal.find(params[:id])
    if animal.update(animal_params)
      redirect_to animal_path
    end
  end
  def destroy
    Animal.destroy(params[:id])
    redirect_to animals_path
  end
end

private

def animal_params
  params.require(:animal).permit(:name, :species, :age)
end
