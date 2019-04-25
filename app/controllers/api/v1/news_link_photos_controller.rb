class Api::V1::NewsLinkPhotosController < ApplicationController
  before_action :set_api_v1_news_link_photo, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/news_link_photos
  # GET /api/v1/news_link_photos.json
  def index
    @api_v1_news_link_photos = Api::V1::NewsLinkPhoto.all
  end

  # GET /api/v1/news_link_photos/1
  # GET /api/v1/news_link_photos/1.json
  def show
  end

  # GET /api/v1/news_link_photos/new
  def new
    @api_v1_news_link_photo = Api::V1::NewsLinkPhoto.new
  end

  # GET /api/v1/news_link_photos/1/edit
  def edit
  end

  # POST /api/v1/news_link_photos
  # POST /api/v1/news_link_photos.json
  def create
    @api_v1_news_link_photo = Api::V1::NewsLinkPhoto.new(api_v1_news_link_photo_params)

    respond_to do |format|
      if @api_v1_news_link_photo.save
        format.html { redirect_to @api_v1_news_link_photo, notice: 'News link photo was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_news_link_photo }
      else
        format.html { render :new }
        format.json { render json: @api_v1_news_link_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/news_link_photos/1
  # PATCH/PUT /api/v1/news_link_photos/1.json
  def update
    respond_to do |format|
      if @api_v1_news_link_photo.update(api_v1_news_link_photo_params)
        format.html { redirect_to @api_v1_news_link_photo, notice: 'News link photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_news_link_photo }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_news_link_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/news_link_photos/1
  # DELETE /api/v1/news_link_photos/1.json
  def destroy
    @api_v1_news_link_photo.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_news_link_photos_url, notice: 'News link photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_news_link_photo
      @api_v1_news_link_photo = Api::V1::NewsLinkPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_news_link_photo_params
      params.fetch(:api_v1_news_link_photo, {})
    end
end
