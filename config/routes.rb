Rails.application.routes.draw do
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  resources :blogs
  resources :comments
  resources :favourites
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: 'users/registrations' }
  #root to: 'blogs#index'
  root to: 'blogs#index'

  get 'contact/index' =>  'contacts#index'
  resources :contacts
  #devise_for :users
  get 'my_posts' => 'blogs#my_posts'
  get 'privileges' => 'blogs#privileges'
  get 'edit_privileges' => 'blogs#edit_privileges'
  get 'update_admin' => 'blogs#update_admin'	
  get 'messages/message' => 'messages#message'
  get 'like' => 'favourites#like'
  get 'unlike' => 'favourites#unlike'
  get 'blog_status' => 'blogs#blog_status'
  get 'edit_blog' => 'blogs#edit_blog'
  get 'update_blogs' => 'blogs#update_blogs'
  get 'subscribe' => 'blogs#subscribe'
  get 'subscribe_in' => 'blogs#subscribe_in'
  get 'subscribe_out' => 'blogs#subscribe_out'
  get 'all_categories' => 'categories#all_categories'


	#root 'posts#index'

  end
