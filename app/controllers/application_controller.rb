class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  #before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
    
    welcome_index_path(current_user)
end


 def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) 
    redirect_to index_path unless @user == current_user
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
     
  end
  
  def create
    @user = User.new(user_params)
     if @user.save
        redirect_to @index
     else
       render 'new'
     end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
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



  protected



  def configure_permitted_parameters
    #added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    #devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs) # [:name])
    #devise_parameter_sanitizer.permit(:account_update, keys:added_attrs) # [:name])
  
    #devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name,:email, :password) }
    #devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name,:email, :password) }
    end
  
  before_action :authenticate_user!

   #end 
    
end






