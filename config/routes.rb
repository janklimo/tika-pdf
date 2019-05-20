# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts

  root to: 'home#landing'

  get 'pdf_file', to: 'home#pdf'
end
