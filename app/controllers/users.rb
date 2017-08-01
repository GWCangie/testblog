class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) 
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
     
  end
  
  def create
    @user = User.new(user_params)
     if @User.save
        redirect_to @index
     else
       render 'new'
     end
  end

  def update
    @user = User.find(params[:id])
    if @User.update(user_params)
      redirect_to @index
    else 
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to index_path
  end
end