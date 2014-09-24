class UsersController < ApplicationController

# skip_before_action :is_authenticated?, only: [:new, :create]

  def index
    redirect_to '/'
    @users = User.all
  end

  def new
    if session[:user_id] == nil
      @user = User.new
    else
      redirect_to user_path(session[:user_id])
    end
  end

  def create
    if session[:user_id] == nil
      user_info = params.require(:user).permit(:email, :avatar, :first_name, :last_name, :password)
      @user = User.create(user_info)
      if @user.errors.any?
        # puts "no user was created, why?!?"
        flash.now[:notice] = "Can't create a new user! Are you a human?"
        render :new
      else
        # puts "a new user was created"
        session[:user_id] = @user.id
        redirect_to user_path(@user.id), :notice => "You have just logged in!"
      end
    end
  end

  def show
    if session[:user_id] != nil
      if session[:user_id].to_i == params[:id].to_i
        @user = User.find_by_id(params[:id])
      else 
        redirect_to user_path(session[:user_id])
      end
    else
      redirect_to '/'
    end
  end

  def edit
    if session[:user_id] != nil
      if session[:user_id].to_i == params[:id].to_i
        @user = User.find(params[:id])
      else
        redirect_to user_path(session[:user_id])
      end
        redirect_to edit_user_path(session[:user_id])
    end
  end

  def update
    find_user_id
    @current_user = current_user
    user_info = params.require(:user).permit(:email, :avatar, :first_name, :last_name,)
    user = User.find_by_id(params[:id])
    user.update_attributes(user_info) if (user)
    redirect_to users_path
  end

  def destroy
    user = User.find_by_id(params[:id])
    user.destroy
    redirect_to users_path
  end

   
  private

  def find_user_id
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end
