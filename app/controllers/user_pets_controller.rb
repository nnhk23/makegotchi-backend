class UserPetsController < ApplicationController
    # before_action :authorized, except: [:index]

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

    def update
        user_pet = UserPet.find(params[:id])
        user_pet.update(user_pet_params)
        render json: user_pet.to_json(
            :include => {
                :pet => {
                    :except => [:created_at, :updated_at]
                }
            },
            :except => [:created_at, :updated_at]
        )
    end

    #if we were to use JWT
    # def create
    #     user_pet = UserPet.new(user_id: current_user.id, pet_id: user_pet_params[:pet_id], name: user_pet_params[:name] )
    #     if user_pet.save
    #         render json: {user: UserSerializer.new(current_user)}
    #     else
    #         render json: userpet.errors
    #     end
    # end


    private

    def user_pet_params
        params.require(:user_pet).permit(:id, :name, :happiness_score, :user_id, :pet_id, :last_fed, :last_slept, :last_cleaned)
    end

end
