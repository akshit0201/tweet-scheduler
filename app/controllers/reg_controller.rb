class RegController < ApplicationController
  def new
    @user = User.new
  end
end
