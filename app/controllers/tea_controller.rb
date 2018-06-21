class TeaController < ApplicationController

  get '/teas' do
    if logged_in?
      teas = Tea.sort_by_type
      @black = teas[:Black]
      @green = teas[:Green]
      @oolong = teas[:Oolong]
      @puerh = teas[:Puerh]
      @white = teas[:White]
      @yellow = teas[:Yellow]
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
      @tea = Tea.finder(params) || Tea.create(params)
      current_user.teas << @tea
      redirect "/teas/#{@tea.id}"
    else
      redirect '/login'
    end
  end

  get '/teas/:id/edit' do
    @tea =Tea.find(params[:id])
    if valid_owner?(@tea)
      erb :'teas/edit'
    else
      redirect '/login'
    end
  end

  post '/teas/:id' do
    @tea = Tea.find(params[:id])
    if valid_owner?(@tea)
      @tea.update(params)
      redirect "/teas/#{@tea.id}"
    else
      redirect '/login'
    end
  end

  get '/teas/:id' do
    @tea = Tea.find(params[:id])
    if logged_in?
      erb :'teas/show'
    else
      redirect '/login'
    end
  end

  use Rack::MethodOverride
  delete '/teas/:id/delete' do
    @tea = Tea.find(params[:id])
    if valid_owner?(@tea)
      @tea.posts.each { |p| p.destroy}
      @tea.destroy
      redirect '/teas'
    else
      redirect '/login'
    end
  end


end
