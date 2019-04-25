class Api::V1::GroupsPollsController < ApplicationController
  before_action :set_api_v1_groups_poll, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/groups_polls
  # GET /api/v1/groups_polls.json
  def index
    @api_v1_groups_polls = Api::V1::GroupsPoll.all
  end

  # GET /api/v1/groups_polls/1
  # GET /api/v1/groups_polls/1.json
  def show
  end

  # GET /api/v1/groups_polls/new
  def new
    @api_v1_groups_poll = Api::V1::GroupsPoll.new
  end

  # GET /api/v1/groups_polls/1/edit
  def edit
  end

  # POST /api/v1/groups_polls
  # POST /api/v1/groups_polls.json
  def create
    @api_v1_groups_poll = Api::V1::GroupsPoll.new(api_v1_groups_poll_params)

    respond_to do |format|
      if @api_v1_groups_poll.save
        format.html { redirect_to @api_v1_groups_poll, notice: 'Groups poll was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_groups_poll }
      else
        format.html { render :new }
        format.json { render json: @api_v1_groups_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/groups_polls/1
  # PATCH/PUT /api/v1/groups_polls/1.json
  def update
    respond_to do |format|
      if @api_v1_groups_poll.update(api_v1_groups_poll_params)
        format.html { redirect_to @api_v1_groups_poll, notice: 'Groups poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_groups_poll }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_groups_poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/groups_polls/1
  # DELETE /api/v1/groups_polls/1.json
  def destroy
    @api_v1_groups_poll.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_groups_polls_url, notice: 'Groups poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_groups_poll
      @api_v1_groups_poll = Api::V1::GroupsPoll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_groups_poll_params
      params.fetch(:api_v1_groups_poll, {})
    end
end
