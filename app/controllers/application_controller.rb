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
    if logged_in?
      redirect '/teas'
    else
      erb :'users/signup'
    end
  end

  post '/signup' do
    if User.find_by(username: params[:username]) || User.find_by(email: params[:email])
      redirect '/login'
    else
      @user =  User.create(params)
      session[:user_id] = @user.id
      redirect '/teas'
    end
  end

  get '/login' do
    if logged_in?
      redirect '/teas'
    else
      erb :'users/login'
    end
  end

  post '/login' do
      @user = User.find_by(username: params[:username])
      @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/teas'
  end

  get '/teas' do
    erb :'teas/index'
  end

  get '/teas/new' do
    erb :'teas/new'
  end

  post '/teas' do
    redirect '/teas/#{@tea.id}'
  end

  get '/teas/:id/edit' do
    erb :'teas/edit'
  end

  post '/teas/:id' do
    redirect '/teas/#{@tea.id}'
  end

  get '/teas/:id' do
    erb :'teas/show'
  end

  get '/logout' do
    session.clear
    redirect '/'
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
