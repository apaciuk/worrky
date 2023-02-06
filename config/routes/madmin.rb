# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :users
  resources :services
  resources :announcements
  namespace :active_storage do
    resources :variant_records
  end
  root to: "dashboard#show"
end
