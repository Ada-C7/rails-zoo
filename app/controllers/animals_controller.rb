class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @result_animal = Animal.find(params[:id])
  end

  # def edit
  #   @result_animal = Animal.find(params[:id])
  # end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new name: params[:animal][:name], age: params[:animal][:age], birthday: params[:animal][:birthday], species: params[:animal][:species]

    if @animal.save
      redirect_to animals_path
    end
  end

end
