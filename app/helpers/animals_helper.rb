module AnimalsHelper
  def animal_params
    params.require(:animal).permit(:name, :age, :leg_numbers, :image) #returns a hash
  end
end
