class NewsFeedController < ApplicationController
  def index
    render json: recent, include: '**', status: '200 OK'
  end

  def posts
    @post = Post
                .includes(:user)
                .includes(:comments)
  end

  def recent
    posts.most_recent_n(50)
  end
end
