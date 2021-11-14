class PostsController < ApplicationController
  before_action :authenticate_user!

 def top
 end

  def new
      @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @user = current_user


   if @post.save

    flash[:notice]= 'You have created book successfully.'
     redirect_to post_path(@post.id)
   else

    render action: :show
   end
  end

  def update
    @post = Post.find(params[:id])
    @post.user_id = current_user.id
    @user = current_user
    if  @post.update(post_params)
       flash[:update]='You have updated book successfully.'
       redirect_to post_path(@post.id)
    else
       render action: :edit
    end
  end

  def show
   @post=Post.find(params[:id])
   @post_new = Post.new
   @user = @post.user
  end

  def edit
    @post=Post.find(params[:id])
    if @post.user != current_user
       redirect_to  post_path(@post.id)
    end
  end

  def destroy
   @post=Post.find(params[:id])
   @post.destroy
   redirect_to post_path
  end
  private

  def post_params
    params.require(:post).permit(:title,:content,:image)
  end
end
