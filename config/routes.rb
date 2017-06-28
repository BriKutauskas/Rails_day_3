Rails.application.routes.draw do
  get 'user/register'

  get 'user/index'

  root 'user#index'

  get 'car/create'

  get 'status/status'

  get 'status/accelerate'

  get 'status/brake'

  get 'status/lights'

  get 'status/parkingbrake'
end
