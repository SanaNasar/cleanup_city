class SessionsController < ApplicationController
  
  def new
    #my login form
    # render :new
  end

  def create
    @user = User.authenticate(params[:user][:email], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), :notice => "User Logged in Successfully!"
    else
      flash.now[:notice] = "Can't log you in"
      render :new
    end

  end

  def destroy
      session[:user_id] = nil
      # render text: "You've destroyed the session"
      redirect_to '/'
  end
  
  def edit

  end
end
