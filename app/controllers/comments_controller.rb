class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype) 
    else
      redirect_to prototype_path(@comment.prototype) 
    end
  end

  def show
    @prototype = Prototype.find(params[:prototype_id])
    puts @prototype.inspect
    puts params[:prototype_id]
    @comment = Comment.new
    @comments = @prototype.comments
    puts @coment.inspect
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id,prototype_id: params[:prototype_id])
  end

end
