class SessionsController < ApplicationController
   

    def create
        user = User.all
    user = User.find_by(username: params[:username])

    session[:user_id] = user.id
    render json: user
    end
    def destroy
        session.delete :user_id
        head :no_content
    end
     private
    #  def params
    #     params.require(:user).permit(:username)
    #     end
end
