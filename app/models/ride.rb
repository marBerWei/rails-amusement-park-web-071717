class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    # binding.pry
    if self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height
      "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif self.user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets to ride the #{self.attraction.name}."
    elsif self.user.height < self.attraction.min_height
      "Sorry. You are not tall enough to ride the #{self.attraction.name}."
    else
      @user = self.user
      @user.tickets -= self.attraction.tickets
      @user.nausea += self.attraction.nausea_rating
      @user.happiness += self.attraction.happiness_rating
      @user.save
     "Thanks for riding the #{self.attraction.name}!"
    end


  end






end
#done