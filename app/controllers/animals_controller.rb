class AnimalsController < ApplicationController
  include AnimalsHelper
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    # id = params[:id].to_i
    # @animal = Animal.find(id)
  end

  def new
    @animal = Animal.new
  end

  # def create
  #   @animal = Animal.new
  #   @animal.name = params[:animal][:name]
  #   @animal.age = params[:animal][:age]
  #   @animal.save
  #
  #   redirect_to animal_path(@animal)
  # end

  def create
    @animal = Animal.new(animal_params)
    @animal.save
    redirect_to animal_path(@animal.name)

    # redirect_to animal_path(@animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    redirect_to animals_path
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

end
