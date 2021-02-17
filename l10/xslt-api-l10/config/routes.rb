# frozen_string_literal: true

Rails.application.routes.draw do
  root 'xml#index'
  # get '/calculate', to: 'xml#calculate'
end
