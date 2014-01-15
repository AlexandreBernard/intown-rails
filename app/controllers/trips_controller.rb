class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /trips.json
  def index
    @trips = Trip.all
    respond_with(@trips)
  end

  # GET /trips/1.json
  def show
    respond_with(@trip, serializer: FullTripSerializer)
  end

  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    @trip.save
    respond_with(@trip, serializer: FullTripSerializer)
  end

  # PATCH/PUT /trips/1.json
  def update
    @trip.update(trip_params)
    respond_with(@trip, serializer: FullTripSerializer)
  end

  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_with(@trip)
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params[:friends_attributes] = params[:friends]
    params.permit(:user_id, :location, :from, :to, :latitude, :longitude, friends_attributes: [ :name, emails: [], phones: [] ])
  end
end
