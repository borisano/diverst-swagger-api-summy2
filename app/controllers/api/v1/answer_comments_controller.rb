class Api::V1::AnswerCommentsController < ApplicationController
  before_action :set_api_v1_answer_comment, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/answer_comments
  # GET /api/v1/answer_comments.json
  def index
    @api_v1_answer_comments = Api::V1::AnswerComment.all
  end

  # GET /api/v1/answer_comments/1
  # GET /api/v1/answer_comments/1.json
  def show
  end

  # GET /api/v1/answer_comments/new
  def new
    @api_v1_answer_comment = Api::V1::AnswerComment.new
  end

  # GET /api/v1/answer_comments/1/edit
  def edit
  end

  # POST /api/v1/answer_comments
  # POST /api/v1/answer_comments.json
  def create
    @api_v1_answer_comment = Api::V1::AnswerComment.new(api_v1_answer_comment_params)

    respond_to do |format|
      if @api_v1_answer_comment.save
        format.html { redirect_to @api_v1_answer_comment, notice: 'Answer comment was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_answer_comment }
      else
        format.html { render :new }
        format.json { render json: @api_v1_answer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/answer_comments/1
  # PATCH/PUT /api/v1/answer_comments/1.json
  def update
    respond_to do |format|
      if @api_v1_answer_comment.update(api_v1_answer_comment_params)
        format.html { redirect_to @api_v1_answer_comment, notice: 'Answer comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_answer_comment }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_answer_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/answer_comments/1
  # DELETE /api/v1/answer_comments/1.json
  def destroy
    @api_v1_answer_comment.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_answer_comments_url, notice: 'Answer comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_answer_comment
      @api_v1_answer_comment = Api::V1::AnswerComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_answer_comment_params
      params.fetch(:api_v1_answer_comment, {})
    end
end
