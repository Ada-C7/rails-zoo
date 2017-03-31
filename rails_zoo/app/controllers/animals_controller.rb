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

  def create
    @animal = Animal.create name: params[:animal][:name], species: params[:animal][:species], age: params[:animal][:age]

    unless animal.id == nil
      redirect_to animal_path #show page
    end
  end



end
