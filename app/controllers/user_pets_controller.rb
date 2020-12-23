class UserPetsController < ApplicationController

    def index
        user = User.find(params[:user_id])
        user_pets = user.user_pets
        render json: user_pets.to_json(
            :include => {
                :pet => {
                    :except => [:created_at, :updated_at]
                }
            },
            :except => [:created_at, :updated_at]
        )
    end

end
