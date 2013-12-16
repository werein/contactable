Contactable::Engine.routes.draw do
  localized do
    get :contact, to: 'contact#new'
    post :contact, to: 'contact#create'
  end
end