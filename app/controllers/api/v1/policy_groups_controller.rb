class Api::V1::PolicyGroupsController < ApplicationController
  before_action :set_api_v1_policy_group, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/policy_groups
  # GET /api/v1/policy_groups.json
  def index
    @api_v1_policy_groups = Api::V1::PolicyGroup.all
  end

  # GET /api/v1/policy_groups/1
  # GET /api/v1/policy_groups/1.json
  def show
  end

  # GET /api/v1/policy_groups/new
  def new
    @api_v1_policy_group = Api::V1::PolicyGroup.new
  end

  # GET /api/v1/policy_groups/1/edit
  def edit
  end

  # POST /api/v1/policy_groups
  # POST /api/v1/policy_groups.json
  def create
    @api_v1_policy_group = Api::V1::PolicyGroup.new(api_v1_policy_group_params)

    respond_to do |format|
      if @api_v1_policy_group.save
        format.html { redirect_to @api_v1_policy_group, notice: 'Policy group was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_policy_group }
      else
        format.html { render :new }
        format.json { render json: @api_v1_policy_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/policy_groups/1
  # PATCH/PUT /api/v1/policy_groups/1.json
  def update
    respond_to do |format|
      if @api_v1_policy_group.update(api_v1_policy_group_params)
        format.html { redirect_to @api_v1_policy_group, notice: 'Policy group was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_policy_group }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_policy_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/policy_groups/1
  # DELETE /api/v1/policy_groups/1.json
  def destroy
    @api_v1_policy_group.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_policy_groups_url, notice: 'Policy group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_policy_group
      @api_v1_policy_group = Api::V1::PolicyGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_policy_group_params
      params.fetch(:api_v1_policy_group, {})
    end
end
