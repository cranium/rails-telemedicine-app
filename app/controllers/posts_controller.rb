class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /case/:case_id/posts
  # GET /case/:case_id/posts.json
  def index
    redirect_to case_thread_url(params[:case_thread_id])
  end

  # GET /case/:case_id/posts/1
  # GET /case/:case_id/posts/1.json
  def show
    @post = @post.posts.build
  end

  # GET /case/:case_id/posts/new
  def new
    @post = @case_thread.posts.build
  end

  # GET /case/:case_id/posts/1/edit
  def edit
  end

  # POST /case/:case_id/posts
  # POST /case/:case_id/posts.json
  def create
    @post = @case_thread.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to [@case_thread, @post], notice: 'post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case/:case_id/posts/1
  # PATCH/PUT /case/:case_id/posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case/:case_id/posts/1
  # DELETE /case/:case_id/posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:posttext)
    end
end
