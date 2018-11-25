class Show < ActiveRecord::Base
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show 
  Show.where(rating: highest_rating).first
  end 
  
   def self.lowest_rating 
    Show.minimum(:rating)
  end 
  
  def self.least_popular_show
    Show.where(rating: lowest_rating).first
  end 
  
  def self.ratings_sum
    Show.sum(:rating)
  end 
  
  def self.
    
    Client.where("orders_count = ?", params[:orders])
end 