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

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animals_path
    else
      render :edit
    end
  end

  def create
    @animal = Animal.create(animal_params)
  end

  def new
    @animal = Animal.create(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end

  def destroy
    @animal = Animal.find(params[:id]).destroy
    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :age, :image)
  end

end
