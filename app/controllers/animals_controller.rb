class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @result_animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create animal_params

    redirect_to animals_path

  end

  def update
    animal = Animal.find(params[:id])
    animal.name = params[:animal][:name]
    animal.birthday = params[:animal][:birthday]
    animal.age = params[:animal][:age]
    animal.species = params[:animal][:species]
    animal.image_url = params[:animal][:image_url]

    if animal.save
      redirect_to animals_path
    end
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species, :birthday, :age, :image_url)
  end

end
