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
        user = User.find_or_create_by(user_params)
        render json: user, except:[:created_at, :updated_at]
        # if user.valid?
        #     render json: user, except:[:created_at, :updated_at]
        # else 
        #     error = user.errors.full_messages.first
        #     render plaintext: error
        # end

    end


    private

    def user_params
        params.require(:user).permit(:name, :username)
    end

end
