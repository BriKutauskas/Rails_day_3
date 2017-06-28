class StatusController < ApplicationController
  #loads car object
  def status
    @car = YAML.load(cookies[:car])
  end
  #loads car object and updates car object with acceleration
  def accelerate
    @car = YAML.load(cookies[:car])
    @car.accelerate
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  #loads car object and updates car object with braking
  def brake
    @car = YAML.load(cookies[:car])
    @car.brake
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  #loads car object and updates car object with lights
  def lights
    @car = YAML.load(cookies[:car])
    @car.lights
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  #loads car object and updates car object with parking brake
  def parkingbrake
    @car = YAML.load(cookies[:car])
    @car.parkingbrake
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
end
