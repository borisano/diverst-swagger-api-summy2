class Api::V1::LikesController < ApplicationController
  before_action :set_api_v1_like, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/likes
  # GET /api/v1/likes.json
  def index
    @api_v1_likes = Api::V1::Like.all
  end

  # GET /api/v1/likes/1
  # GET /api/v1/likes/1.json
  def show
  end

  # GET /api/v1/likes/new
  def new
    @api_v1_like = Api::V1::Like.new
  end

  # GET /api/v1/likes/1/edit
  def edit
  end

  # POST /api/v1/likes
  # POST /api/v1/likes.json
  def create
    @api_v1_like = Api::V1::Like.new(api_v1_like_params)

    respond_to do |format|
      if @api_v1_like.save
        format.html { redirect_to @api_v1_like, notice: 'Like was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_like }
      else
        format.html { render :new }
        format.json { render json: @api_v1_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/likes/1
  # PATCH/PUT /api/v1/likes/1.json
  def update
    respond_to do |format|
      if @api_v1_like.update(api_v1_like_params)
        format.html { redirect_to @api_v1_like, notice: 'Like was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_like }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/likes/1
  # DELETE /api/v1/likes/1.json
  def destroy
    @api_v1_like.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_likes_url, notice: 'Like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_like
      @api_v1_like = Api::V1::Like.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_like_params
      params.fetch(:api_v1_like, {})
    end
end
