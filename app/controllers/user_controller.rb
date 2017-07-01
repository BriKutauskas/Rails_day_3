class UserController < ApplicationController
  #forces user to register with first and last name
  def register
    if !params.has_key?(:first) || params[:first].strip.empty? || !params.has_key?(:last) || params[:last].strip.empty?
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
