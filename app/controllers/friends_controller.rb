class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
    respond_with(@friends)
  end

  # GET /friends/1
  # GET /friends/1.json
  def show
    respond_with(@friend)
  end

  # GET /friends/new
  def new
    @friend = Friend.new
  end

  # GET /friends/1/edit
  def edit
  end

  # POST /friends
  # POST /friends.json
  def create
    @friend = Friend.new(friend_params)
    flash[:notice] = 'Friend was successfully created.' if @friend.save
    respond_with(@friend)
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    flash[:notice] = 'Friend was successfully updated.' if @friend.update(friend_params)
    respond_with(@friend)
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friend.destroy
    respond_with(@friend)
  end

  private

  def set_friend
    @friend = Friend.find(params[:id])
  end

  def friend_params
    params.require(:friend).permit(:name, :emails, :phones)
  end
end
