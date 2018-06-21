class UserController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect '/teas'
    else
      erb :'users/signup'
    end
  end

  post '/signup' do
    if logged_in?
      redirect '/teas'
    elsif User.find_by(username: params[:username]) || User.find_by(email: params[:email])
      redirect '/login'
    else
      if !params[:username].empty? && !params[:email].empty? && !params[:password].empty?
        @user =  User.create(params)
        session[:user_id] = @user.id
        redirect '/teas'
      else
        @msg = "Please try again, you must enter an email, usernme and password to signup."
        erb :'users/signup'
      end
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
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/teas'
    else
      @msg = "Please try again, you must enter a valid usernme and password to login."
      erb :'users/login'
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
    end
    redirect '/'
  end

  get '/users/:id' do
    if logged_in?
      @user = User.find(params[:id])
      erb :'users/show'
    else
      erb :'users/login'
    end
  end

end
