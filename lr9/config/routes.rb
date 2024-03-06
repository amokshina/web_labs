Rails.application.routes.draw do
  get 'number/input'
  get 'number/view'
  root "number#input"
end

