class PostCommentsController < ApplicationController
  # GET /post_comments
  # GET /post_comments.json
  def index
    @post_comments = PostComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_comments }
    end
  end

  # GET /post_comments/1
  # GET /post_comments/1.json
  def show
    @post_comment = PostComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_comment }
    end
  end

  # GET /post_comments/new
  # GET /post_comments/new.json
  def new
    @post_comment = PostComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_comment }
    end
  end

  # GET /post_comments/1/edit
  def edit
    @post_comment = PostComment.find(params[:id])
  end

  # POST /post_comments
  # POST /post_comments.json
  def create
    @post_comment = PostComment.new(params[:post_comment])

    respond_to do |format|
      if @post_comment.save
        format.html { redirect_to @post_comment, notice: 'Post comment was successfully created.' }
        format.json { render json: @post_comment, status: :created, location: @post_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post_comments/1
  # PUT /post_comments/1.json
  def update
    @post_comment = PostComment.find(params[:id])

    respond_to do |format|
      if @post_comment.update_attributes(params[:post_comment])
        format.html { redirect_to @post_comment, notice: 'Post comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_comments/1
  # DELETE /post_comments/1.json
  def destroy
    @post_comment = PostComment.find(params[:id])
    @post_comment.destroy

    respond_to do |format|
      format.html { redirect_to post_comments_url }
      format.json { head :ok }
    end
  end
end
