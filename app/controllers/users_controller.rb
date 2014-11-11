
class UsersController < ApplicationController
      def show
        @user = User.find(params[:id])
      end

      def create
        secure_params = params.require(:user).permit(:name, :email, 
                                  :password, :password_confirmation)
        @user = User.new(secure_params)
        if @user.save
          sign_in @user       #  NEW LINE
        	flash[:success] = "Welcome to the Twitter App!"
        	redirect_to @user
           # Handle a successful save.
        else
        	render new     
        end
      end
   
      def new
        @user = User.new
      end
    end



 