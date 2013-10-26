class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /friends.json
  def index
    @friends = Friend.all
    respond_with(@friends)
  end

  # GET /friends/1.json
  def show
    respond_with(@friend)
  end

  # POST /friends.json
  def create
    @friend = Friend.new(friend_params)
    @friend.save
    respond_with(@friend)
  end

  # PATCH/PUT /friends/1.json
  def update
    @friend.update(friend_params)
    respond_with(@friend)
  end

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
