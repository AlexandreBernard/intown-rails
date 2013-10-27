class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /meetings.json
  def index
    @meetings = Meeting.all
    respond_with(@meetings)
  end

  # GET /meetings/1.json
  def show
    respond_with(@meeting, serializer: FullMeetingSerializer)
  end

  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.save
    respond_with(@meeting, serializer: FullMeetingSerializer)
  end

  # PATCH/PUT /meetings/1.json
  def update
    @meeting.update(meeting_params)
    respond_with(@meeting, serializer: FullMeetingSerializer)
  end

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
    params.permit(:trip_id, :friend_id, :location, timeslots: [])
  end
end
