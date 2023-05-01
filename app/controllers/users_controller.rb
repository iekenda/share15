class UsersController < ApplicationController
  before_action :authenticate_user!
  def dashboard
  end  

def new
  @user = User.new
end

def create
  @user = User.create params.require(:user).permit(:about,:image) 
  redirect_to @user
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = User.find(params[:id]) 
end

def update
  @user = User.find(params[:id])
  redirect_to dashboard_path
end

private
  def current_user_params
    params.require(:user).permit(:about, :image)
  end
end
