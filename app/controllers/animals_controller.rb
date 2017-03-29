class AnimalsController < ApplicationController

  def index
    puts '>>>>>>amb<<<<<<<<: Inside animals#index'
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    Animal.create(animal_params)
    redirect_to animals_path
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
    session.delete(:return_to)
    session[:return_to] ||= request.referer
    @back_url = session[:return_to]
  end

  def update
    animal = Animal.find(params[:id])
    animal.update_attributes(animal_params)
    animal.save
    # redirect_to animal_path(animal)
    redirect_to session[:return_to]
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.destroy
    redirect_to animals_path
  end

  #### PRIVATE
  private
  def animal_params
    params.require(:animal).permit(:name, :species, :age)
  end

end
