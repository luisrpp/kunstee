Rails.application.routes.draw do
  resources :departamentos
  # post "/produtos" => "produtos#create"
  # get "/produtos/new" => "produtos#new"
  # delete "/produtos/:id" => "produtos#destroy", as: :produto

  resources :produtos, only: [:new, :create, :edit, :update, :destroy]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
  root "produtos#index"
end
