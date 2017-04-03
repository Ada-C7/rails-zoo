class Animal < ApplicationRecord
  
  SALMON_SPECIES = {
    sockeye: "Oncorhynchus nerka",
    coho: "Oncorhynchus kisutch",
    chinook: "Oncorhynchus tshawytscha",
    pink: "Oncorhynchus gorbuscha",
    chum: "Oncorhynchus keta",
    steelhead: "Oncorhynchus mykiss",
    cutthroat: "Oncorhynchus clarkii"
  }

  def initialize(params={})
    super
    unless params[:species].nil? || params[:species].empty?
      self.scientific_name = SALMON_SPECIES[params[:species].to_sym]
      self.photo_url = "#{params[:species]}-salmon" if self.photo_url.empty?
    end
  end
end
