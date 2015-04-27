class Restaurant < ActiveRecord::Base
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations

  # def reservations
  #   Reservation.where(restaurant_id: self.id)
  # end

  def open_hours
    (opening...closing).each do |h|
      ["#{h}", h]
    end
  end

end
