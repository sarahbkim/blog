class Admin::PostsController < ApplicationController
	http_basic_authenticate_with name: "sk", password: "Psalm139!", except: :index

	def index
		@post = Post.all
	end

	def new
		@post = Post.new

	end

#there is something wrong with my create action.... 
	def create 
		@post = Post.new(post_params)

		@post.save
		redirect_to admin_post_path@post 
	end

	def edit
		@post = Post.find(params[:id])
	end
	
	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to admin_post_path(@post)
		else
			render 'edit' 
		end
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
		params.require(:post).permit(:title, :text, categories_attributes: [:name])
	end

end
