class Api::V1::UserRewardActionsController < ApplicationController
  before_action :set_api_v1_user_reward_action, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_reward_actions
  # GET /api/v1/user_reward_actions.json
  def index
    @api_v1_user_reward_actions = Api::V1::UserRewardAction.all
  end

  # GET /api/v1/user_reward_actions/1
  # GET /api/v1/user_reward_actions/1.json
  def show
  end

  # GET /api/v1/user_reward_actions/new
  def new
    @api_v1_user_reward_action = Api::V1::UserRewardAction.new
  end

  # GET /api/v1/user_reward_actions/1/edit
  def edit
  end

  # POST /api/v1/user_reward_actions
  # POST /api/v1/user_reward_actions.json
  def create
    @api_v1_user_reward_action = Api::V1::UserRewardAction.new(api_v1_user_reward_action_params)

    respond_to do |format|
      if @api_v1_user_reward_action.save
        format.html { redirect_to @api_v1_user_reward_action, notice: 'User reward action was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_reward_action }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_reward_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_reward_actions/1
  # PATCH/PUT /api/v1/user_reward_actions/1.json
  def update
    respond_to do |format|
      if @api_v1_user_reward_action.update(api_v1_user_reward_action_params)
        format.html { redirect_to @api_v1_user_reward_action, notice: 'User reward action was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_reward_action }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_reward_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_reward_actions/1
  # DELETE /api/v1/user_reward_actions/1.json
  def destroy
    @api_v1_user_reward_action.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_reward_actions_url, notice: 'User reward action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_reward_action
      @api_v1_user_reward_action = Api::V1::UserRewardAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_reward_action_params
      params.fetch(:api_v1_user_reward_action, {})
    end
end
