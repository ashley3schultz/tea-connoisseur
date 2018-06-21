require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "banana"
  end

  get "/" do
    if logged_in?
      redirect '/teas'
    else
      erb :index
    end
  end

  helpers do
    def current_user
      @current_user ||= User.find(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end

    def valid_owner?(obj)
      logged_in? && session[:user_id] == obj.user_id
    end
  end
end
