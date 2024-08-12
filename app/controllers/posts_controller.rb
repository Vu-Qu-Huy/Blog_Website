class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[show index]
  before_action :authorize_user!, only: %i[edit update destroy]
  before_action :set_tags, only: [:index, :show]

 

  def your_posts
    @posts = current_user.posts.order(created_at: :desc)
  end
  

  # GET /posts or /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  # GET /posts/1 or /posts/1.json
  def show
    @post.update(views: @post.views + 1)
    @comments = @post.comments.order(created_at: :desc)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params.except(:tags))
    @post.user = current_user
    create_or_delete_posts_tags(@post, params[:post][:tags])
    

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_or_delete_posts_tags(post, tags)
    post.taggables.destroy_all
  normalized_tags = tags.strip.split(',').map(&:strip).map(&:downcase).uniq

  normalized_tags.each do |tag_name|
    tag = Tag.find_or_create_by(name: tag_name)
    post.tags << tag
  end
  end
  # PATCH/PUT /posts/1 or /posts/1.json



  def update
    create_or_delete_posts_tags(@post, params[:post][:tags])
    respond_to do |format|
      if @post.update(post_params.except(:tags))
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy!
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def set_tags
    @tags = Tag.order(:name).limit(5) # Adjust the limit to the number of tags you want to show
  end

  private

  # Ensure the user is the owner of the post
  def authorize_user!
    unless @post.user_id == current_user.id
      redirect_to posts_path, notice: "Not authorized to edit this information"
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body, :preview_image, :tags)
  end


end
