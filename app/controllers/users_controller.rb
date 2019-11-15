class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name], email: params[:user][:email])
    redirect_to "/users"
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @skills = Skill.all
  end


end
