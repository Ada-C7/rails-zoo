class Animal < ApplicationRecord
  SPECIES_DATA = {
    sockeye: {scientific_name: "Oncorhynchus nerka", default_picture: "https://upload.wikimedia.org/wikipedia/commons/8/88/Sockeye_adult_male.jpg"},
    coho: {scientific_name: "Oncorhynchus kisutch", default_picture: "https://upload.wikimedia.org/wikipedia/commons/9/91/Oncorhynchus_keta.jpeg"},
    chinook: {scientific_name: "Oncorhynchus tshawytscha", default_picture: "https://upload.wikimedia.org/wikipedia/commons/d/d8/Chinook_Salmon_Adult_Male.jpg"},
    pink: {scientific_name: "Oncorhynchus gorbuscha", default_picture: "https://upload.wikimedia.org/wikipedia/commons/c/c2/Humpback_Salmon_Adult_Male.jpg"},
    chum: {scientific_name: "Oncorhynchus keta", default_picture: "https://upload.wikimedia.org/wikipedia/commons/7/71/Dog_Salmon_Breeding_Male.jpg"}
  }

  def initialize(params={})
    super
    unless params[:species].nil? || params[:species].empty?
      self.scientific_name = SPECIES_DATA[params[:species].to_sym][:scientific_name]
      self.photo_url = SPECIES_DATA[params[:species].to_sym][:default_picture] if self.photo_url.empty?
    end
  end
end
