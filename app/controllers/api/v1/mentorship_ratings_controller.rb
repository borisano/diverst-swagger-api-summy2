class Api::V1::MentorshipRatingsController < ApplicationController
  before_action :set_api_v1_mentorship_rating, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentorship_ratings
  # GET /api/v1/mentorship_ratings.json
  def index
    @api_v1_mentorship_ratings = Api::V1::MentorshipRating.all
  end

  # GET /api/v1/mentorship_ratings/1
  # GET /api/v1/mentorship_ratings/1.json
  def show
  end

  # GET /api/v1/mentorship_ratings/new
  def new
    @api_v1_mentorship_rating = Api::V1::MentorshipRating.new
  end

  # GET /api/v1/mentorship_ratings/1/edit
  def edit
  end

  # POST /api/v1/mentorship_ratings
  # POST /api/v1/mentorship_ratings.json
  def create
    @api_v1_mentorship_rating = Api::V1::MentorshipRating.new(api_v1_mentorship_rating_params)

    respond_to do |format|
      if @api_v1_mentorship_rating.save
        format.html { redirect_to @api_v1_mentorship_rating, notice: 'Mentorship rating was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentorship_rating }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentorship_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentorship_ratings/1
  # PATCH/PUT /api/v1/mentorship_ratings/1.json
  def update
    respond_to do |format|
      if @api_v1_mentorship_rating.update(api_v1_mentorship_rating_params)
        format.html { redirect_to @api_v1_mentorship_rating, notice: 'Mentorship rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentorship_rating }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentorship_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentorship_ratings/1
  # DELETE /api/v1/mentorship_ratings/1.json
  def destroy
    @api_v1_mentorship_rating.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentorship_ratings_url, notice: 'Mentorship rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentorship_rating
      @api_v1_mentorship_rating = Api::V1::MentorshipRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentorship_rating_params
      params.fetch(:api_v1_mentorship_rating, {})
    end
end
