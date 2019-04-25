class Api::V1::MentoringSessionTopicsController < ApplicationController
  before_action :set_api_v1_mentoring_session_topic, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentoring_session_topics
  # GET /api/v1/mentoring_session_topics.json
  def index
    @api_v1_mentoring_session_topics = Api::V1::MentoringSessionTopic.all
  end

  # GET /api/v1/mentoring_session_topics/1
  # GET /api/v1/mentoring_session_topics/1.json
  def show
  end

  # GET /api/v1/mentoring_session_topics/new
  def new
    @api_v1_mentoring_session_topic = Api::V1::MentoringSessionTopic.new
  end

  # GET /api/v1/mentoring_session_topics/1/edit
  def edit
  end

  # POST /api/v1/mentoring_session_topics
  # POST /api/v1/mentoring_session_topics.json
  def create
    @api_v1_mentoring_session_topic = Api::V1::MentoringSessionTopic.new(api_v1_mentoring_session_topic_params)

    respond_to do |format|
      if @api_v1_mentoring_session_topic.save
        format.html { redirect_to @api_v1_mentoring_session_topic, notice: 'Mentoring session topic was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentoring_session_topic }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentoring_session_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentoring_session_topics/1
  # PATCH/PUT /api/v1/mentoring_session_topics/1.json
  def update
    respond_to do |format|
      if @api_v1_mentoring_session_topic.update(api_v1_mentoring_session_topic_params)
        format.html { redirect_to @api_v1_mentoring_session_topic, notice: 'Mentoring session topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentoring_session_topic }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentoring_session_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentoring_session_topics/1
  # DELETE /api/v1/mentoring_session_topics/1.json
  def destroy
    @api_v1_mentoring_session_topic.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentoring_session_topics_url, notice: 'Mentoring session topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentoring_session_topic
      @api_v1_mentoring_session_topic = Api::V1::MentoringSessionTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentoring_session_topic_params
      params.fetch(:api_v1_mentoring_session_topic, {})
    end
end
