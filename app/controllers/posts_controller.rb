class PostsController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @post = current_user.posts.all(:order => 'title DESC')
  end
  
  def new
    @post = current_user.posts.new
    3.times { @post.tags.build }
  end
  
  def create
    @post = current_user.posts.new(post_params)
    
    if @post.save
      @post.create_activity :create, owner: current_user
      flash[:notice] = "Successfully created post."
      redirect_to posts_path
    else
      render 'new'
    end
  end  
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = current_user.posts.find(params[:id])
  end
  
  def update
    @post = current_user.posts.find(params[:id])
    
    if @post.update_attributes(post_params)
      redirect_to posts_path
    else
      render 'edit'  
    end
  end
  
  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    
    redirect_to posts_path
  end

private
  def post_params
    params.require(:post).permit(:title, :body, :mood, :tags_attributes => [:id, :content, :_destroy])
  end
end
