class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  layout 'blogs'
include ApplicationHelper
  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.where('status = ?', 1)
    current_user
    @masthead_picture = 'bg_index'
    @head_title = "Life station"
    @head_subtitle = "where your thoughts go"
    @last = Blog.last
  end

  
  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @comment = Comment.new
    @blog = Blog.includes(:user, :comments, :favourites).where('id=?', params[:id]).first
    @head_title = @blog.title
    @masthead_picture = 'bg_new_post'
    if (@blog.status == 0)
      redirect_to blogs_path
    end
  end


  

  def privileges
    current_user
    @users2 = User.where('role_id = ? OR role_id = ?',1,2)
    @users1 = User.where(role_id: 3)
    @masthead_picture = 'bg_privileges'
    @head_title = "Pick a new admin"
  end

  def edit_privileges
    tmp = User.find(params[:id]).id
    @user = User.find(tmp)
    @user.role_id = 2
    @user.save
    redirect_to root_path
  end

  def update_admin
    tmp = User.find(params[:id]).id
    if(tmp == 1)
      redirect_to root_path
    end
    @user = User.find(tmp)
    @user.role_id = 3
    @user.save
    redirect_to root_path
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
    @head_title = "New post? Fantastic!"
    @head_subtitle = "Feel free to write anything you can imagine"
    @masthead_picture = 'bg_new_post'

  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find(params[:id])
    @head_title = "Editing Blog"
    @masthead_picture = 'bg_new_post'

  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    @masthead_picture = 'bg_new_post'

    if(@blog.status == 1)
      BlogsMailer.send_published_post(@blog.title).deliver_now
    end

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def blog_status
    @u = current_user
    @published = Blog.where('status = ?', 1)
    @drafted = Blog.where('status = ?', 0)
    @masthead_picture = 'bg_profile_settings'
    @head_title = "Post Status"
  end


  def update_blogs
    tmp = Blog.find(params[:id]).id
    @blog = Blog.find(tmp)
    @blog.status = 1
    @blog.save
    BlogsMailer.send_published_post(@blog.title).deliver_now
    redirect_to root_path
  end

  def edit_blog
    tmp = Blog.find(params[:id]).id
    @blog = Blog.find(tmp)
    @blog.status = 0
    @blog.save
    redirect_to root_path
  end

  def my_posts
  @user = current_user
  @masthead_picture = 'bg_profile_settings'
  @head_title = "My draft posts"
  if current_user
    @blogs = Blog.where(user_id: @user.id, status: 0)
  end
  end

  def subscribe
    @masthead_picture = 'bg_profile_settings'
    @head_title = "Profile Settings"
  end

  def subscribe_in
  @user = current_user
  @user.status = 1
  @user.save
  redirect_to root_path
  end

  def subscribe_out
    @user = current_user
    @user.status = 0
    @user.save
    redirect_to root_path
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    @user = current_user
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog  updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog  destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :body, :image, :status, :category_id)
    end
end
