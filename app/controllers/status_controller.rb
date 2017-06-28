class StatusController < ApplicationController
  def status
    @car = YAML.load(cookies[:car])
  end
  def accelerate
    @car = YAML.load(cookies[:car])
    @car.accelerate
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  def brake
    @car = YAML.load(cookies[:car])
    @car.brake
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  def lights
    @car = YAML.load(cookies[:car])
    @car.lights
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
  def parkingbrake
    @car = YAML.load(cookies[:car])
    @car.parkingbrake
    cookies[:car] = @car.to_yaml
    render "status.html.erb"
  end
end
