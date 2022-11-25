class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    posts = Post.all
    render json: posts
  end

  def show
    post = Post.find(params[:id])
    render json: post
  end
  # def post
  #   post = Post.find(params[:id])
  #   render json: post, serializer: AuthorPostSerializer
  # end

  # def posts
  #   posts = Post.all
  #   render json: posts, each_serializer: AuthorPostSerializer
  # end

  private

  def render_not_found_response
    render json: { error: "Post not found" }, status: :not_found
  end

end
