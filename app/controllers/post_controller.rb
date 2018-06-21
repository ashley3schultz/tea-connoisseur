class PostController < ApplicationController


  post '/posts' do
    if logged_in?
      @post = Post.create(params)
      @tea = Tea.find(params[:tea_id])
      redirect "/teas/#{@tea.id}"
    else
      redirect '/login'
    end
  end

  get 'posts/:id/edit' do
    if logged_in?
      @post = Post.find(param[:id])
      erb :'posts/edit'
    else
      redirect '/login'
    end
  end

  post '/posts/:id' do
    @post = Post.find(param[:id])
    if logged_in? && @post.owner?
      @post.update(params)
      redirect "/teas/#{@tea.id}"
    else
      redirect 'login' do
    end
  end


end
