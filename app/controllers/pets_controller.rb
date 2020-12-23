class PetsController < ApplicationController

    def index
        pets = Pet.all
        render json: pets, except: [:created_at, :updated_at]
    end

end
