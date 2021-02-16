class SessionsController < ApplicationController

    def login
    end

    def create
        auth_hash = request.env["omniauth.auth"]
        if auth_hash
            if  player = Player.find_by(email: auth_hash.uid)
                session[:player_id] = player.id
                redirect_to player_path(player)
            else
                p = Player.create(email: auth_hash.uid, name: auth_hash[:info][:nickname], password: SecureRandom.hex)
                p.save
                session[:player_id] = p.id
                redirect_to player_path(p)
            end
        else
            @player = Player.find_by(email: params[:email])
            if @player && @player.authenticate(params[:password])
                session[:player_id] = @player.id
                flash[:alert] = "Logged in as #{@player.name}!"
                redirect_to player_path(@player)
            else
                flash[:error] = "Invalid Login!"
                redirect_to :login
            end
        end
    end

    def logout
        session.clear
        redirect_to root_path
    end
end
