class Api::V1::SharedNewsFeedLinksController < ApplicationController
  before_action :set_api_v1_shared_news_feed_link, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/shared_news_feed_links
  # GET /api/v1/shared_news_feed_links.json
  def index
    @api_v1_shared_news_feed_links = Api::V1::SharedNewsFeedLink.all
  end

  # GET /api/v1/shared_news_feed_links/1
  # GET /api/v1/shared_news_feed_links/1.json
  def show
  end

  # GET /api/v1/shared_news_feed_links/new
  def new
    @api_v1_shared_news_feed_link = Api::V1::SharedNewsFeedLink.new
  end

  # GET /api/v1/shared_news_feed_links/1/edit
  def edit
  end

  # POST /api/v1/shared_news_feed_links
  # POST /api/v1/shared_news_feed_links.json
  def create
    @api_v1_shared_news_feed_link = Api::V1::SharedNewsFeedLink.new(api_v1_shared_news_feed_link_params)

    respond_to do |format|
      if @api_v1_shared_news_feed_link.save
        format.html { redirect_to @api_v1_shared_news_feed_link, notice: 'Shared news feed link was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_shared_news_feed_link }
      else
        format.html { render :new }
        format.json { render json: @api_v1_shared_news_feed_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/shared_news_feed_links/1
  # PATCH/PUT /api/v1/shared_news_feed_links/1.json
  def update
    respond_to do |format|
      if @api_v1_shared_news_feed_link.update(api_v1_shared_news_feed_link_params)
        format.html { redirect_to @api_v1_shared_news_feed_link, notice: 'Shared news feed link was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_shared_news_feed_link }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_shared_news_feed_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/shared_news_feed_links/1
  # DELETE /api/v1/shared_news_feed_links/1.json
  def destroy
    @api_v1_shared_news_feed_link.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_shared_news_feed_links_url, notice: 'Shared news feed link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_shared_news_feed_link
      @api_v1_shared_news_feed_link = Api::V1::SharedNewsFeedLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_shared_news_feed_link_params
      params.fetch(:api_v1_shared_news_feed_link, {})
    end
end
