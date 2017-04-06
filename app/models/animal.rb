class Animal < ApplicationRecord
  IMG_UPDATE = "02 Apr 2017"

  def image
    created_at.inspect.include?(IMG_UPDATE) ? "#{self.species}.jpg"
      : "http://lorempixel.com/400/200/animals"
  end
end
