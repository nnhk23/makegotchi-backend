class UsersController < ApplicationController

    def show 
        user = User.find(params[:id])
        render json: user.to_json(
            :include => {
                :user_pets => {
                    :except => [:created_at, :updated_at]
                }
            },
            :except => [:created_at, :updated_at]
        )
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end


    private

    def user_params
        params.require(:user).permit(:id, :username, :name, :buys_left)
    end
end
