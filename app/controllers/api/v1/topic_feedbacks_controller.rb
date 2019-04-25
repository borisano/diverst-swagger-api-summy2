class Api::V1::TopicFeedbacksController < ApplicationController
  before_action :set_api_v1_topic_feedback, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/topic_feedbacks
  # GET /api/v1/topic_feedbacks.json
  def index
    @api_v1_topic_feedbacks = Api::V1::TopicFeedback.all
  end

  # GET /api/v1/topic_feedbacks/1
  # GET /api/v1/topic_feedbacks/1.json
  def show
  end

  # GET /api/v1/topic_feedbacks/new
  def new
    @api_v1_topic_feedback = Api::V1::TopicFeedback.new
  end

  # GET /api/v1/topic_feedbacks/1/edit
  def edit
  end

  # POST /api/v1/topic_feedbacks
  # POST /api/v1/topic_feedbacks.json
  def create
    @api_v1_topic_feedback = Api::V1::TopicFeedback.new(api_v1_topic_feedback_params)

    respond_to do |format|
      if @api_v1_topic_feedback.save
        format.html { redirect_to @api_v1_topic_feedback, notice: 'Topic feedback was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_topic_feedback }
      else
        format.html { render :new }
        format.json { render json: @api_v1_topic_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/topic_feedbacks/1
  # PATCH/PUT /api/v1/topic_feedbacks/1.json
  def update
    respond_to do |format|
      if @api_v1_topic_feedback.update(api_v1_topic_feedback_params)
        format.html { redirect_to @api_v1_topic_feedback, notice: 'Topic feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_topic_feedback }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_topic_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/topic_feedbacks/1
  # DELETE /api/v1/topic_feedbacks/1.json
  def destroy
    @api_v1_topic_feedback.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_topic_feedbacks_url, notice: 'Topic feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_topic_feedback
      @api_v1_topic_feedback = Api::V1::TopicFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_topic_feedback_params
      params.fetch(:api_v1_topic_feedback, {})
    end
end
