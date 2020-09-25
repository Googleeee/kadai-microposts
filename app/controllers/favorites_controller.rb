class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:follow_id])
    current_user.follow(user)
    flash[:success] = 'お気に入りにしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:follow_id])
    current_user.unfollow(user)
    flash[:success] = 'お気に入りを外しました。'
    redirect_to user
  end
end