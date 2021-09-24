class UsersController < ApplicationController
    # GET users/:id
    def show
        user = User.find_by(id: user_params[:id])
        render json: user, include: :items
    end

    private 
    def user_params 
        params.permit(:id, :username, :city, :items)
    end
end
