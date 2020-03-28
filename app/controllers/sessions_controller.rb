class SessionsController < ApplicationController
 	skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    
    if User.find_by(id: session[:user_id])
      redirect_to '/pages/dashboard', :notice => "You already logged in"

    else
      render :layout => 'login'
    end
  end

  def create
  	  @user = User.authenticate(params[:username], params[:password])
   if @user 
      session[:user_id] = @user.id
      redirect_to '/pages/dashboard', :notice => "Logged in"
   else
      redirect_to '/login'
   end
  end

  def login
  end



  def destroy
    session[:user_id] = nil
    redirect_to '/login', :notice => "Logged out"
  end

end
