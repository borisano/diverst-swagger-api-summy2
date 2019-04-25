class Api::V1::UserGroupsController < ApplicationController
  before_action :set_api_v1_user_group, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_groups
  # GET /api/v1/user_groups.json
  def index
    @api_v1_user_groups = Api::V1::UserGroup.all
  end

  # GET /api/v1/user_groups/1
  # GET /api/v1/user_groups/1.json
  def show
  end

  # GET /api/v1/user_groups/new
  def new
    @api_v1_user_group = Api::V1::UserGroup.new
  end

  # GET /api/v1/user_groups/1/edit
  def edit
  end

  # POST /api/v1/user_groups
  # POST /api/v1/user_groups.json
  def create
    @api_v1_user_group = Api::V1::UserGroup.new(api_v1_user_group_params)

    respond_to do |format|
      if @api_v1_user_group.save
        format.html { redirect_to @api_v1_user_group, notice: 'User group was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_group }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_groups/1
  # PATCH/PUT /api/v1/user_groups/1.json
  def update
    respond_to do |format|
      if @api_v1_user_group.update(api_v1_user_group_params)
        format.html { redirect_to @api_v1_user_group, notice: 'User group was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_group }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_groups/1
  # DELETE /api/v1/user_groups/1.json
  def destroy
    @api_v1_user_group.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_groups_url, notice: 'User group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_group
      @api_v1_user_group = Api::V1::UserGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_group_params
      params.fetch(:api_v1_user_group, {})
    end
end
