class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
    respond_with(@trips)
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    respond_with(@trip)
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    flash[:notice] = 'Trip was successfully created.' if @trip.save
    respond_with(@trip)
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    flash[:notice] = 'Trip was successfully updated.' if @trip.update(trip_params)
    respond_with(@trip)
  end

  # DELETE /trips/1
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
    params.require(:trip).permit(:name, :location, :from_date, :to_date)
  end
end
