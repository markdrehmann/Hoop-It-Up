class SessionsController < ApplicationController
  def login
    @player = Player.new
  end

  def create
    auth_hash = request.env["omniauth.auth"]
    auth_hash ? login_with_auth(auth_hash) : login
  end

  def logout
    session.clear
    redirect_to root_path
  end

  private

  def login_with_auth(auth_hash)
    player = Player.find_by(email: auth_hash.uid)
    player ||= Player.create(email: auth_hash.uid, name: auth_hash[:info][:nickname], password: SecureRandom.hex)
    session[:player_id] = player.id
    redirect_to player_path(player)
  end

  def login
    player = Player.find_by(email: params[:email])
    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      flash[:alert] = "Logged in as #{player.name}!"
      redirect_to player_path(player)
    else
      flash[:error] = "Invalid Login!"
      redirect_to :login
    end
  end
end