class AnimalsController < ApplicationController

  def index
    puts '>>>>>>amb<<<<<<<<: Inside animals#index'
    @animals = Animal.all
  end

  #### PRIVATE
  private
  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
