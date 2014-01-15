class UsersController < ApplicationController
  respond_to :json
  
  # POST /users.json
  def create
    @trip = User.new(user_params)
    @trip.save
    respond_with(@trip, serializer: UserSerializer)
  end
  
  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
  
end
