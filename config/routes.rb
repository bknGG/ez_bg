Rails.application.routes.draw do
  root 'posts#index'

  # Подключение url адреса "site.ru/about"
  get 'about' => 'pages#about'

  # Индексирование со всеми страницами Posts
  resources :posts
end
