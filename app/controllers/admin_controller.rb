class AdminController < ApplicationController
  before_action :check_status


  def show
    @user = User.find(session[:user_id])
    @user_secrets=Secret.where(user_id:session[:user_id])
    @liked_secrets = Like.where(user:params[:id])

  end

  def add
     redirect_to "/show"
  end

  def back

       redirect_to "/dashboard"

  end

  private

  def check_status
    if !session[:user_id]
      redirect_to '/'
    end
end
end
