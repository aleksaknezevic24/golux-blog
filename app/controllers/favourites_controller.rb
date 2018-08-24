class FavouritesController < ApplicationController
  before_action :set_favourite, only: [:show, :edit, :update, :destroy]

  # GET /favourites
  # GET /favourites.json
  def index
    @favourites = Favourite.all
  end

  # GET /favourites/1
  # GET /favourites/1.json
  def show
  end

  # GET /favourites/new
  def new
    @favourite = Favourite.new
  end

  # GET /favourites/1/edit
  def edit
  end

  def like
    tmp_blog = Blog.find(params[:blog_id])
    @fav = Favourite.where(user_id: current_user.id, blog_id: tmp_blog.id).first
    @fav.status = 'unset'
    @fav.save
    redirect_back fallback_location: request.referrer;
  end

  def unlike
    tmp = Blog.find(params[:blog_id]).id
    @fav = Favourite.where('user_id = ? AND blog_id = ?',current_user.id,tmp).first
    if @fav
      @fav.status = 'set'
      @fav.save
    else
      @favourite = Favourite.new
      @favourite.user_id = current_user.id
      @favourite.blog_id = tmp
      @favourite.status = 'set'
      @favourite.save
    end
    redirect_back fallback_location: request.referrer;
  end

  # POST /favourites
  # POST /favourites.json
  def create
    @favourite = Favourite.new(favourite_params)
    @favourite.user_id = current_user.id
    @blog = Blog.find(params[:favourite][:blog_id])
    @favourite.blog_id = @blog.id
    @favourite.status = 0

    respond_to do |format|
      if @favourite.save
        format.html { redirect_to @favourite, notice: 'Favourite was successfully created.' }
        format.json { render :show, status: :created, location: @favourite }
      else
        format.html { render :new }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourites/1
  # PATCH/PUT /favourites/1.json
  def update
    respond_to do |format|
      if @favourite.update(favourite_params)
        format.html { redirect_to blogs_path, notice: 'Favourite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favourite }
      else
        format.html { render :edit }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.json
  def destroy
    @favourite.destroy
    respond_to do |format|
      format.html { redirect_to favourites_url, notice: 'Favourite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_params
      params.require(:favourite).permit(:user_id, :blog_id)
    end
end
