class Api::V1::AnswerUpvotesController < ApplicationController
  before_action :set_api_v1_answer_upvote, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/answer_upvotes
  # GET /api/v1/answer_upvotes.json
  def index
    @api_v1_answer_upvotes = Api::V1::AnswerUpvote.all
  end

  # GET /api/v1/answer_upvotes/1
  # GET /api/v1/answer_upvotes/1.json
  def show
  end

  # GET /api/v1/answer_upvotes/new
  def new
    @api_v1_answer_upvote = Api::V1::AnswerUpvote.new
  end

  # GET /api/v1/answer_upvotes/1/edit
  def edit
  end

  # POST /api/v1/answer_upvotes
  # POST /api/v1/answer_upvotes.json
  def create
    @api_v1_answer_upvote = Api::V1::AnswerUpvote.new(api_v1_answer_upvote_params)

    respond_to do |format|
      if @api_v1_answer_upvote.save
        format.html { redirect_to @api_v1_answer_upvote, notice: 'Answer upvote was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_answer_upvote }
      else
        format.html { render :new }
        format.json { render json: @api_v1_answer_upvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/answer_upvotes/1
  # PATCH/PUT /api/v1/answer_upvotes/1.json
  def update
    respond_to do |format|
      if @api_v1_answer_upvote.update(api_v1_answer_upvote_params)
        format.html { redirect_to @api_v1_answer_upvote, notice: 'Answer upvote was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_answer_upvote }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_answer_upvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/answer_upvotes/1
  # DELETE /api/v1/answer_upvotes/1.json
  def destroy
    @api_v1_answer_upvote.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_answer_upvotes_url, notice: 'Answer upvote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_answer_upvote
      @api_v1_answer_upvote = Api::V1::AnswerUpvote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_answer_upvote_params
      params.fetch(:api_v1_answer_upvote, {})
    end
end
