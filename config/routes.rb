Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cashflows/:start_date&:end_date', to: 'cashflows#index'
  get '/cashflows/income/:start_date&:end_date', to: 'cashflows#income'
  get '/cashflows/income', to: 'cashflows#income'
  get '/cashflows/expense/:start_date&:end_date', to: 'cashflows#expense'
  get '/cashflows/expense', to: 'cashflows#expense'
  get '/cashflows/balance/:start_date&:end_date', to: 'cashflows#balance'
  get '/cashflows/balance', to: 'cashflows#balance'
  get '/cashflows/spend_allowance/:start_date&:end_date', to: 'cashflows#spend_allowance'
  get '/cashflows/find_end_date', to: 'cashflows#find_end_date'
  resources :users, :accounts, :cashflows, :batches
end
