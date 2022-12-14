class UsersController < ApplicationController
 #skip_before_action :authorized, only: [:new, :create]


  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	respond_to do |format|
  		if @user.save
  		session[:user_id] = @user.id
  		format.html { redirect_to root_url, notice: 'User was successfully created.' }
        format.json { render "/welcome", status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end

  end
  	  
  end

  def show 

  end 

private


def user_params
	params.require(:user).permit(:username, :password)

	end
  
end
