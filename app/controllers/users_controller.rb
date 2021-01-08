class UsersController < ApplicationController
    #skip_before_action :authorized, only: [:create, :login]

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
            render json: {error: "Username has already been taken. Please try again."}
            # render json: {error: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user.to_json(
                :include => {
                    :user_pets => {
                        :except => [:created_at, :updated_at]
                    }
                },
                :except => [:created_at, :updated_at]
            )
        else
            render json: {error: "Username has already been taken. Sorry can't update your profile."}
        end
    end

    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: "Incorrect credentials, please try again."}
        end
    end

    def get_user
        render json: {user: UserSerializer.new(current_user)}
    end

    def destroy
        user = User.find(user_params[:id])
        user.destroy
        render json: user
    end

    private

    def user_params
        params.permit(:name, :username, :password, :id, :money, :plays_left)
    end

end
