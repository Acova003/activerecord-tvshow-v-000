class Show < ActiveRecord::Base
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show 

  Client.where("orders_count = ?", params[:orders])  
  end 
end 