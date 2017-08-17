class RidesController<ApplicationController

  def create
  	# binding.pry
    ride = Ride.new
    ride.user_id = current_user.id
    ride.attraction_id = params[:ride][:attraction_id]
    ride.save
    ride_message = ride.take_ride
    flash[:message] = ride_message
    redirect_to user_path(current_user)
  end

end
#done
