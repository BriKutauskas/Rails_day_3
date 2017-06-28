class CarController < ApplicationController
  #After user registers, load user cookie and create new car object
  def create
    @user = YAML.load(cookies[:user])
    if !params[:make] || !params[:model] || !params[:year] || !params[:color]
      render "create"
    else
      car = Car.new(params[:make], params[:model], params[:year], params[:color])
      cookies[:car] = car.to_yaml
      redirect_to "/status/status"
    end
  end

end
