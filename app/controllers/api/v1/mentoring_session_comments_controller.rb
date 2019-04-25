class Api::V1::MentoringSessionCommentsController < ApplicationController
  before_action :set_api_v1_mentoring_session_comment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentoring_session_comments
  # GET /api/v1/mentoring_session_comments.json
  def index
    @api_v1_mentoring_session_comments = Api::V1::MentoringSessionComment.all
  end

  # GET /api/v1/mentoring_session_comments/1
  # GET /api/v1/mentoring_session_comments/1.json
  def show
  end

  # GET /api/v1/mentoring_session_comments/new
  def new
    @api_v1_mentoring_session_comment = Api::V1::MentoringSessionComment.new
  end

  # GET /api/v1/mentoring_session_comments/1/edit
  def edit
  end

  # POST /api/v1/mentoring_session_comments
  # POST /api/v1/mentoring_session_comments.json
  def create
    @api_v1_mentoring_session_comment = Api::V1::MentoringSessionComment.new(api_v1_mentoring_session_comment_params)

    respond_to do |format|
      if @api_v1_mentoring_session_comment.save
        format.html { redirect_to @api_v1_mentoring_session_comment, notice: 'Mentoring session comment was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentoring_session_comment }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentoring_session_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentoring_session_comments/1
  # PATCH/PUT /api/v1/mentoring_session_comments/1.json
  def update
    respond_to do |format|
      if @api_v1_mentoring_session_comment.update(api_v1_mentoring_session_comment_params)
        format.html { redirect_to @api_v1_mentoring_session_comment, notice: 'Mentoring session comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentoring_session_comment }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentoring_session_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentoring_session_comments/1
  # DELETE /api/v1/mentoring_session_comments/1.json
  def destroy
    @api_v1_mentoring_session_comment.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentoring_session_comments_url, notice: 'Mentoring session comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentoring_session_comment
      @api_v1_mentoring_session_comment = Api::V1::MentoringSessionComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentoring_session_comment_params
      params.fetch(:api_v1_mentoring_session_comment, {})
    end
end
