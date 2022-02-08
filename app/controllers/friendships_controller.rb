class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: friend.id)
    if current_user.save
      flash[:notice] = "You're following #{friend.full_name}!"
    else
      flash[:alert] = "There was something wrong with the tracking request!"
    end
    redirect_to my_friends_path
  end

  def destroy
    friend = User.find(params[:id])
    user_friend = current_user.friendships.where(friend_id: friend.id).first
    user_friend.destroy
    flash[:notice] = "#{friend.full_name} was successfully unfollowed!"
    redirect_to my_friends_path
  end
end
