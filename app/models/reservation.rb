class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  # def restaurant
  #   Restaurant.find(restaurant_id)
  # end

  # def restaurant=(r)
  #   self.restaurant_id = r.id
  # end
end