class Api::V1::PollResponsesController < ApplicationController
  before_action :set_api_v1_poll_response, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/poll_responses
  # GET /api/v1/poll_responses.json
  def index
    @api_v1_poll_responses = Api::V1::PollResponse.all
  end

  # GET /api/v1/poll_responses/1
  # GET /api/v1/poll_responses/1.json
  def show
  end

  # GET /api/v1/poll_responses/new
  def new
    @api_v1_poll_response = Api::V1::PollResponse.new
  end

  # GET /api/v1/poll_responses/1/edit
  def edit
  end

  # POST /api/v1/poll_responses
  # POST /api/v1/poll_responses.json
  def create
    @api_v1_poll_response = Api::V1::PollResponse.new(api_v1_poll_response_params)

    respond_to do |format|
      if @api_v1_poll_response.save
        format.html { redirect_to @api_v1_poll_response, notice: 'Poll response was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_poll_response }
      else
        format.html { render :new }
        format.json { render json: @api_v1_poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/poll_responses/1
  # PATCH/PUT /api/v1/poll_responses/1.json
  def update
    respond_to do |format|
      if @api_v1_poll_response.update(api_v1_poll_response_params)
        format.html { redirect_to @api_v1_poll_response, notice: 'Poll response was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_poll_response }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_poll_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/poll_responses/1
  # DELETE /api/v1/poll_responses/1.json
  def destroy
    @api_v1_poll_response.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_poll_responses_url, notice: 'Poll response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_poll_response
      @api_v1_poll_response = Api::V1::PollResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_poll_response_params
      params.fetch(:api_v1_poll_response, {})
    end
end
