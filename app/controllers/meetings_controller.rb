class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
    respond_with(@meetings)
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    respond_with(@meeting)
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    flash[:notice] = 'Meeting was successfully created.' if @meeting.save
    respond_with(@meeting)
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    flash[:notice] = 'Meeting was successfully updated.' if @meeting.update(meeting_params)
    respond_with(@meeting)
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting.destroy
    respond_with(@meeting)
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:trip_id, :friend_id, :location, :times)
  end
end
