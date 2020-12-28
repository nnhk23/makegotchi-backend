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


    def create
        user = User.new(user_params)
        if user.save
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: user.errors
        end
    end


    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: "Incorrect Credentials"}
        end
    end


    private

    def user_params
        params.permit(:name, :username, :password)
    end

end
