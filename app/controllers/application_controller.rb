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

  helpers do
    def current_user
      User.find(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end
  end
end
