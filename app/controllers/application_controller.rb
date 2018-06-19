require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "banana"
  end

  get "/" do
    erb :index
  end

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    redirect '/teas'
  end

  get '/login' do
    erb :'users/login'
  end

  post '/login' do
    redirect '/teas'
  end

  get '/teas' do
    erb :'teas/index'
  end






  helpers do
    def current_user
      User.find(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end
  end
end
