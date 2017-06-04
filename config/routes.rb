Rails.application.routes.draw do

  resources :events
  root 'sender#index'

  resources :sender

  resources :sender_user

  resources :messages

  resources :send_image

  resources :send_image_to_user

  resources :send_video

  resources :send_video_to_user

  resources :send_audio

  resources :send_audio_to_user

  resources :send_document 

  resources :send_document_to_user

  post '/366674849:AAH2xDCGrXohH3RaWAMfzeoVggJceNbPFTA' => 'application#webhook'
end
