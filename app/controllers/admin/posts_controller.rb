class Admin::PostsController < ApplicationController
	layout 'admin' 


	def index
		@post = Post.all
	end

	def new
		@post = Post.new 
	end

	def create
		@post = Post.new(post_params)

		@post.save
		redirect_to admin_posts_path 
	end

	def edit
		@post = Post.find(params[:id])

	end
	

	def show
		@post = Post.find(params[:id])
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy 

		redirect_to admin_posts_path
	end


private
	def post_params
		params.require(:post).permit(:title, :text, :meta_title, :meta_desc)
	end

end
