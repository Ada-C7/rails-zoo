class Animal < ApplicationRecord

  def image_pathway
    if image == nil
      return ""
    else
      return image
    end
  end  
end
