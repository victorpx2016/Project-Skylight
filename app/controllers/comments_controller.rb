class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    
    if @comment.save
      @comment.create_activity :create, owner: current_user
      flash[:notice] = "Successfully posted comment."
      redirect_to post_path(@post)
    else
      render 'new'
    end
  
  end
 
  private
    def comment_params
      params.require(:comment).permit(:comment, :user_id).merge(
        name: current_user.name,
        user_id: current_user.id
      )
    end
end
