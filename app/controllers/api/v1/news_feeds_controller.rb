class Api::V1::NewsFeedsController < ApplicationController
  before_action :set_api_v1_news_feed, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/news_feeds
  # GET /api/v1/news_feeds.json
  def index
    @api_v1_news_feeds = Api::V1::NewsFeed.all
  end

  # GET /api/v1/news_feeds/1
  # GET /api/v1/news_feeds/1.json
  def show
  end

  # GET /api/v1/news_feeds/new
  def new
    @api_v1_news_feed = Api::V1::NewsFeed.new
  end

  # GET /api/v1/news_feeds/1/edit
  def edit
  end

  # POST /api/v1/news_feeds
  # POST /api/v1/news_feeds.json
  def create
    @api_v1_news_feed = Api::V1::NewsFeed.new(api_v1_news_feed_params)

    respond_to do |format|
      if @api_v1_news_feed.save
        format.html { redirect_to @api_v1_news_feed, notice: 'News feed was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_news_feed }
      else
        format.html { render :new }
        format.json { render json: @api_v1_news_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/news_feeds/1
  # PATCH/PUT /api/v1/news_feeds/1.json
  def update
    respond_to do |format|
      if @api_v1_news_feed.update(api_v1_news_feed_params)
        format.html { redirect_to @api_v1_news_feed, notice: 'News feed was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_news_feed }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_news_feed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/news_feeds/1
  # DELETE /api/v1/news_feeds/1.json
  def destroy
    @api_v1_news_feed.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_news_feeds_url, notice: 'News feed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_news_feed
      @api_v1_news_feed = Api::V1::NewsFeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_news_feed_params
      params.fetch(:api_v1_news_feed, {})
    end
end
