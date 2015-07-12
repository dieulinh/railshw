class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@product = Post.new
	end

	def create
		@post = Post.find(post_id)
		if @post.save
			redirect_to posts_path_url
		else
			render :new
		end
	end

	private

	def post_id
		params[:id]
	end

	def post_params
		params.require(:post).permit(:title, :body)
	end
end