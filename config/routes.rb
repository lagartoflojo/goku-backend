GokucollectorBackend::Application.routes.draw do
  resources :items, except: :edit
  resources :collections, except: :edit
  match '*all' => 'application#cors', constraints: { method: 'OPTIONS'}
end
