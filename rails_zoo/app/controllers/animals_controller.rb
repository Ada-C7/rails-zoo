class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def details
    @animal = Animal.find_by(id: params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    if @animal.save
      redirect_to animals_path
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
   @animal.destroy
   respond_to do |format|
    format.html {redirect_to root_path}
  end
  end


private

  def animal_params
    params.require(:animal).permit(:age , :name , :breed)
  end

end
