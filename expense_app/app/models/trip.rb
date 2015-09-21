class Trip < ActiveRecord::Base
  belongs_to :user
  # before_update :before_update_method

  # def before_update_method
  # 	# self.avg_hotel = self.hotel_total / self.num_day
  # end
end
