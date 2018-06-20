class TeaController < ApplicationController

  get '/teas' do
    if logged_in?
      erb :'teas/index'
    else
      redirect '/login'
    end
  end

  get '/teas/new' do
    if logged_in?
      erb :'teas/new'
    else
      redirect '/login'
    end
  end

  post '/teas' do
    if logged_in?
      @tea = Tea.create(params)
      redirect '/teas/#{@tea.id}'
    else
      redirect '/login'
    end
  end

  get '/teas/:id/edit' do
    if logged_in?
      erb :'teas/edit'
    else
      redirect '/login'
    end
  end

  post '/teas/:id' do
    if logged_in? && owner?
      #### add owner check
      @tea  Tea.find(params[:id])
      @tea.update(params)
      redirect '/teas/#{@tea.id}'
    else
      redirect '/login'
    end
  end

  get '/teas/:id' do
    Tea.find(params[:id])
    if logged_in?
      erb :'teas/show'
    else
      redirect '/login'
    end
  end

end
