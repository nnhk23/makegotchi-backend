class WelcomeController < ApplicationController

    def index
        render plain: "Welcome to Makegotchi Database."
    end
end
