class TeaController < ApplicationController

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

end
