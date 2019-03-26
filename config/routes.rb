Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  # Подключение url адреса "site.ru/about"
  get 'about' => 'pages#about', as: 'about'

  # Индексирование со всеми страницами Posts
  resources :posts do
  resources :comments
    end
end
