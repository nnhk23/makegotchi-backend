class UserPetsController < ApplicationController
    # before_action :authorized, only: [:create]

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


    def create
        # byebug
        user = User.find(params[:user_id])
        pet = Pet.find(params[:pet_id])
        user_pet = UserPet.create(user_pet_params)
        render json: user_pet.to_json(
            :include => {
                :pet => {
                    :except => [:created_at, :updated_at]
                }
            },
            :except => [:created_at, :updated_at]
        )
    end


    private

    def user_pet_params
        params.require(:user_pet).permit(:id, :name, :happiness_score, :user_id, :pet_id)
    end

end
