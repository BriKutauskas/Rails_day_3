class Car
  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
    @speed = 0
    @lights = true
    @parkingbrake = false
  end
  def show_car
    "Your car is a " + @year + " " + @make + " " + @model
  end
  def accelerate
    if !@parkingbrake
      @speed += 10
    end
  end
  def brake
    if @speed > 7
      @speed -= 7
    elsif @speed < 7 && @speed > 0
      @speed -= 1
    end
  end
  def show_speed
    @speed.to_s
  end
  def lights
    @lights = !@lights
  end
  def parkingbrake
    # if @speed == 0
      @parkingbrake = !@parkingbrake
    # end
  end
  def color
    @color
  end
end
