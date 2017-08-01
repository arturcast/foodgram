class UsersController < ApplicationController
  def profile
    @user = User.find_by(username: params[:username])
    @posts = @user.posts
  end
end
