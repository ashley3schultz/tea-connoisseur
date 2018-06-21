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

  get '/posts/:id/edit' do
    @post = Post.find(params[:id])
    if logged_in? && owner?(@post)
      erb :'posts/edit'
    else
      redirect '/login'
    end
  end

  post '/posts/:id' do
    @post = Post.find(params[:id])
    if logged_in? && owner?(@post)
      @post.update(content: params[:content])
      redirect "/teas/#{@post.tea.id}"
    else
      redirect 'login'
    end
  end


end
