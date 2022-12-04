class UsersController < ApplicationController
   
  
        # user = User.find_by(username: user_params[:username])
        # cookies[:user_id] = user.id
        # if user
        # render json: user.id
        # diogenes
        def show
            user = User.find_by(id: session[:user_id])
            if user
              render json: user
            else
              render json: { error: "Not authorized" }, status: :unauthorized
            end
          end
  

 

    # private
    # def user_params
    # params.require(:user).permit(:username)
    # end
end
