class Api::V1::NewsLinkCommentsController < ApplicationController
  before_action :set_api_v1_news_link_comment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/news_link_comments
  # GET /api/v1/news_link_comments.json
  def index
    @api_v1_news_link_comments = Api::V1::NewsLinkComment.all
  end

  # GET /api/v1/news_link_comments/1
  # GET /api/v1/news_link_comments/1.json
  def show
  end

  # GET /api/v1/news_link_comments/new
  def new
    @api_v1_news_link_comment = Api::V1::NewsLinkComment.new
  end

  # GET /api/v1/news_link_comments/1/edit
  def edit
  end

  # POST /api/v1/news_link_comments
  # POST /api/v1/news_link_comments.json
  def create
    @api_v1_news_link_comment = Api::V1::NewsLinkComment.new(api_v1_news_link_comment_params)

    respond_to do |format|
      if @api_v1_news_link_comment.save
        format.html { redirect_to @api_v1_news_link_comment, notice: 'News link comment was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_news_link_comment }
      else
        format.html { render :new }
        format.json { render json: @api_v1_news_link_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/news_link_comments/1
  # PATCH/PUT /api/v1/news_link_comments/1.json
  def update
    respond_to do |format|
      if @api_v1_news_link_comment.update(api_v1_news_link_comment_params)
        format.html { redirect_to @api_v1_news_link_comment, notice: 'News link comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_news_link_comment }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_news_link_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/news_link_comments/1
  # DELETE /api/v1/news_link_comments/1.json
  def destroy
    @api_v1_news_link_comment.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_news_link_comments_url, notice: 'News link comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_news_link_comment
      @api_v1_news_link_comment = Api::V1::NewsLinkComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_news_link_comment_params
      params.fetch(:api_v1_news_link_comment, {})
    end
end
