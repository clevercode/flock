class UsersController < ApplicationController
  respond_to :html

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.valid?
      flash[:notice] = "Nice job, you've created your flock account!"
      sign_in(:user, @user)
    else
      flash[:notice] = "We couldn't create your flock account, sorry about that."
    end
    redirect_to root_url
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_with @user.update_attributes(params[:user])
  end

  def destroy
    @user = User.find(params[:id])
    respond_with @user.destroy
  end
end
