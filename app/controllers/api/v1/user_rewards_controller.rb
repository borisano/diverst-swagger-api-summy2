class Api::V1::UserRewardsController < ApplicationController
  before_action :set_api_v1_user_reward, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_rewards
  # GET /api/v1/user_rewards.json
  def index
    @api_v1_user_rewards = Api::V1::UserReward.all
  end

  # GET /api/v1/user_rewards/1
  # GET /api/v1/user_rewards/1.json
  def show
  end

  # GET /api/v1/user_rewards/new
  def new
    @api_v1_user_reward = Api::V1::UserReward.new
  end

  # GET /api/v1/user_rewards/1/edit
  def edit
  end

  # POST /api/v1/user_rewards
  # POST /api/v1/user_rewards.json
  def create
    @api_v1_user_reward = Api::V1::UserReward.new(api_v1_user_reward_params)

    respond_to do |format|
      if @api_v1_user_reward.save
        format.html { redirect_to @api_v1_user_reward, notice: 'User reward was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_reward }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_rewards/1
  # PATCH/PUT /api/v1/user_rewards/1.json
  def update
    respond_to do |format|
      if @api_v1_user_reward.update(api_v1_user_reward_params)
        format.html { redirect_to @api_v1_user_reward, notice: 'User reward was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_reward }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_rewards/1
  # DELETE /api/v1/user_rewards/1.json
  def destroy
    @api_v1_user_reward.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_rewards_url, notice: 'User reward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_reward
      @api_v1_user_reward = Api::V1::UserReward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_reward_params
      params.fetch(:api_v1_user_reward, {})
    end
end
