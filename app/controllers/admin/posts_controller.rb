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

	def update
	  @post = Post.find(params[:id])

	  respond_to do |format|
	    if @post.update_attributes(params[:post])
	      flash[:notice] = 'Post was successfully updated.'
	      format.html { redirect_to(@post) }
	      format.xml  { head :ok }
	    else
	      format.html { render :action => "edit" }
	      format.xml  { render :xml => @post.errors,
		                :status => :unprocessable_entity }
    end
  end
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
