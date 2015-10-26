class FriendshipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @friend = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    @pending_invited = current_user.pending_invited
  end

  def create
    @friend = User.find(params[:id])
    @friendship_created = current_user.invite(@friend)
    if @friendship_created
      flash[:notice] = "You've sent #{@friend.name} a friend request."
      redirect_to friendships_path
    end
  end

  def update
    @friend = User.find(params[:id])
    @friendship_approved = current_user.approve(@friend)
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    if @friendship_approved
      flash[:notice] = "You've approved #{@friend.name}'s friend request."
      redirect_to friendships_path
    end
  end

  def destroy
    @friend = User.find(params[:id])
    @friendship = current_user.send(:find_any_friendship_with, @friend)
    if @friendship
      @friendship.delete
      @removed = true
      flash[:notice] = "#{@friend.name} is no longer a friend."
      redirect_to friendships_path
    end
  end
end