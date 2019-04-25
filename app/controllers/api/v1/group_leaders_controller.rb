class Api::V1::GroupLeadersController < ApplicationController
  before_action :set_api_v1_group_leader, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/group_leaders
  # GET /api/v1/group_leaders.json
  def index
    @api_v1_group_leaders = Api::V1::GroupLeader.all
  end

  # GET /api/v1/group_leaders/1
  # GET /api/v1/group_leaders/1.json
  def show
  end

  # GET /api/v1/group_leaders/new
  def new
    @api_v1_group_leader = Api::V1::GroupLeader.new
  end

  # GET /api/v1/group_leaders/1/edit
  def edit
  end

  # POST /api/v1/group_leaders
  # POST /api/v1/group_leaders.json
  def create
    @api_v1_group_leader = Api::V1::GroupLeader.new(api_v1_group_leader_params)

    respond_to do |format|
      if @api_v1_group_leader.save
        format.html { redirect_to @api_v1_group_leader, notice: 'Group leader was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_group_leader }
      else
        format.html { render :new }
        format.json { render json: @api_v1_group_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/group_leaders/1
  # PATCH/PUT /api/v1/group_leaders/1.json
  def update
    respond_to do |format|
      if @api_v1_group_leader.update(api_v1_group_leader_params)
        format.html { redirect_to @api_v1_group_leader, notice: 'Group leader was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_group_leader }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_group_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/group_leaders/1
  # DELETE /api/v1/group_leaders/1.json
  def destroy
    @api_v1_group_leader.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_group_leaders_url, notice: 'Group leader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_group_leader
      @api_v1_group_leader = Api::V1::GroupLeader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_group_leader_params
      params.fetch(:api_v1_group_leader, {})
    end
end
