Jemimagen::Application.routes.draw do
  resources :clientes


  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  get "quienes_somos/index"

  resources :contactos


  resources :servicios


  root to: 'inicio#index'

  get "inicio/index"

end
