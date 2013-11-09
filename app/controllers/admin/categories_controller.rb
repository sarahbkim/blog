class Admin::CategoriesController < ApplicationController
def create
	@post = Post.find(params[:post_id])
 	@categories = @post.categories.create(params[:category].permit(:name)) 
	redirect_to post_path(@post)
end
end
