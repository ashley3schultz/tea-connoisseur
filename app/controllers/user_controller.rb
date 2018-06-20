class UserController < ApplicationController

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

  get '/logout' do
    session.clear
    redirect '/'
  end

  get '/users/:id' do
    #@user = User.find(params[:id])
    erb :'users/show'
  end

end
