class Show < ActiveRecord::Base
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show 
  Show.includes("orders").where(first_name: 'Ryan', orders: { status: 'received' }).maximum
  end 
end 