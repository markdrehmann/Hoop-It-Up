class SessionsController < ApplicationController

    def login

    end

    def create

    end

    def logout
        session.clear
        redirect_to root_path
    end
end
