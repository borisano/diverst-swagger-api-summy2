class Api::V1::MentorshipSessionsController < ApplicationController
  before_action :set_api_v1_mentorship_session, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mentorship_sessions
  # GET /api/v1/mentorship_sessions.json
  def index
    @api_v1_mentorship_sessions = Api::V1::MentorshipSession.all
  end

  # GET /api/v1/mentorship_sessions/1
  # GET /api/v1/mentorship_sessions/1.json
  def show
  end

  # GET /api/v1/mentorship_sessions/new
  def new
    @api_v1_mentorship_session = Api::V1::MentorshipSession.new
  end

  # GET /api/v1/mentorship_sessions/1/edit
  def edit
  end

  # POST /api/v1/mentorship_sessions
  # POST /api/v1/mentorship_sessions.json
  def create
    @api_v1_mentorship_session = Api::V1::MentorshipSession.new(api_v1_mentorship_session_params)

    respond_to do |format|
      if @api_v1_mentorship_session.save
        format.html { redirect_to @api_v1_mentorship_session, notice: 'Mentorship session was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mentorship_session }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mentorship_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mentorship_sessions/1
  # PATCH/PUT /api/v1/mentorship_sessions/1.json
  def update
    respond_to do |format|
      if @api_v1_mentorship_session.update(api_v1_mentorship_session_params)
        format.html { redirect_to @api_v1_mentorship_session, notice: 'Mentorship session was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mentorship_session }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mentorship_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mentorship_sessions/1
  # DELETE /api/v1/mentorship_sessions/1.json
  def destroy
    @api_v1_mentorship_session.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mentorship_sessions_url, notice: 'Mentorship session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mentorship_session
      @api_v1_mentorship_session = Api::V1::MentorshipSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mentorship_session_params
      params.fetch(:api_v1_mentorship_session, {})
    end
end
