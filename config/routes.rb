# frozen_string_literal: true

Rails.application.routes.draw do
  resources :friends
  root 'friends#index'

  get 'up' => 'rails/health#show', as: :rails_health_check
end
