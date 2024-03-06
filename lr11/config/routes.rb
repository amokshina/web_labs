Rails.application.routes.draw do
  get 'numbers/index'
  get 'numbers/view'
  get '/numbers/show_xml_data', to: 'numbers#show_xml_data', as: 'show_xml_data', defaults: { format: :xml }
  root "numbers#index"
end
