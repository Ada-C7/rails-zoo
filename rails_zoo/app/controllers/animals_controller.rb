class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def show
    @result_animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal = Animal.find(params[:id])

    if animal.update(strong_params)
      redirect_to animal_path
    end
  end

  def create
    # @animal = Animal.create name: params[:animal][:name], species: params[:animal][:species], age: params[:animal][:age]

    @animal = Animal.create strong_params

    unless @animal.id == nil
      redirect_to animals_path #index page
    end
  end

private

def strong_params
  params.require(:animal).permit(:name, :species, :age)

end


end
