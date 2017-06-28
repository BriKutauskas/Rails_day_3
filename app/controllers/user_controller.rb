class UserController < ApplicationController
  def register
    if !params[:first] || !params[:last]
      render "register"
    else
      user = User.new(params[:first], params[:last])
      cookies[:user] = user.to_yaml
      redirect_to "/car/create"
    end
  end

  def index

  end
end
