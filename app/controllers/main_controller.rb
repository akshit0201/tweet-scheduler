class MainController < ApplicationController
  def index
    flash.now[:notice] = "Log In successful"
    flash.now[:alert] = "Invalid cred"
  end
end
