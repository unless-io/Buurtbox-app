Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
  resources :posts, only: %i[index create]

  get "bibliotheek"      => "pages#bibliotheek",      as: :bibliotheek
  get "bestanden-delen"  => "pages#bestanden_delen",  as: :bestanden_delen
  get "bord"             => "pages#bord",             as: :bord
  get "over"             => "pages#over",             as: :over

  # Captive portal redirects for Android, Apple, Windows, and Linux connectivity checks
  get "/generate_204",              to: redirect("/")
  get "/hotspot-detect.html",       to: redirect("/")
  get "/canonicalhtml",             to: redirect("/")
  get "/connecttest.txt",           to: redirect("/")   # Windows NCSI
  get "/ncsi.txt",                  to: redirect("/")   # Windows NCSI legacy
  get "/success.txt",               to: redirect("/")   # Firefox

  # Catch-all: redirect unknown paths to root (must be last)
  match "*path", to: redirect("/"), via: :all
end
