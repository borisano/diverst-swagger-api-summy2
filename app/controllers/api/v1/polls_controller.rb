class Api::V1::PollsController < ApplicationController
  before_action :set_api_v1_poll, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/polls
  # GET /api/v1/polls.json
  def index
    @api_v1_polls = Api::V1::Poll.all
  end

  # GET /api/v1/polls/1
  # GET /api/v1/polls/1.json
  def show
  end

  # GET /api/v1/polls/new
  def new
    @api_v1_poll = Api::V1::Poll.new
  end

  # GET /api/v1/polls/1/edit
  def edit
  end

  # POST /api/v1/polls
  # POST /api/v1/polls.json
  def create
    @api_v1_poll = Api::V1::Poll.new(api_v1_poll_params)

    respond_to do |format|
      if @api_v1_poll.save
        format.html { redirect_to @api_v1_poll, notice: 'Poll was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_poll }
      else
        format.html { render :new }
        format.json { render json: @api_v1_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/polls/1
  # PATCH/PUT /api/v1/polls/1.json
  def update
    respond_to do |format|
      if @api_v1_poll.update(api_v1_poll_params)
        format.html { redirect_to @api_v1_poll, notice: 'Poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_poll }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/polls/1
  # DELETE /api/v1/polls/1.json
  def destroy
    @api_v1_poll.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_polls_url, notice: 'Poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_poll
      @api_v1_poll = Api::V1::Poll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_poll_params
      params.fetch(:api_v1_poll, {})
    end
end
