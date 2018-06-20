class PostController < ApplicationController


  post '/posts' do
    @post = Post.create(params)
    redirect "/teas/#{@tea.id}"
  end


end
