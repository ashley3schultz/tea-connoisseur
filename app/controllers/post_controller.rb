class PostController < ApplicationController

  post '/posts' do
    if logged_in?
    @tea = Tea.find(params[:tea_id])
      if !params[:content].empty?
        @post = Post.create(content: params[:content], user_id: current_user.id, tea_id: @tea.id)
        redirect "/teas/#{@tea.id}"
      else
        @msg = "Post_cannot_be_blank."
        redirect "/teas/#{@tea.id}-#{@msg}"
      end
    else
      redirect '/login'
    end
  end

  get '/posts/:id/edit' do
    p_id = params[:id].split('-')[0].to_i
    @msg = params[:id].split('-')[1]
    @post = Post.find(p_id)
    if valid_owner?(@post)
      erb :'posts/edit'
    else
      redirect '/login'
    end
  end

  post '/posts/:id' do
    @post = Post.find(params[:id])
    if valid_owner?(@post)
      if !params[:content].empty?
        @post.update(content: params[:content])
        redirect "/teas/#{@post.tea.id}"
      else
        @msg = "Post_cannot_be_blank."
        redirect "/posts/#{@post.id}-#{@msg}/edit"
      end
    else
      redirect 'login'
    end
  end

  use Rack::MethodOverride
  delete '/posts/:id/delete' do
    @post = Post.find(params[:id])
    if valid_owner?(@post)
      @post.delete
      redirect '/teas'
    else
      redirect '/login'
    end
  end


end
