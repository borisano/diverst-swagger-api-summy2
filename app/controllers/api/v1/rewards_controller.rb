class Api::V1::RewardsController < ApplicationController
  before_action :set_api_v1_reward, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/rewards
  # GET /api/v1/rewards.json
  def index
    @api_v1_rewards = Api::V1::Reward.all
  end

  # GET /api/v1/rewards/1
  # GET /api/v1/rewards/1.json
  def show
  end

  # GET /api/v1/rewards/new
  def new
    @api_v1_reward = Api::V1::Reward.new
  end

  # GET /api/v1/rewards/1/edit
  def edit
  end

  # POST /api/v1/rewards
  # POST /api/v1/rewards.json
  def create
    @api_v1_reward = Api::V1::Reward.new(api_v1_reward_params)

    respond_to do |format|
      if @api_v1_reward.save
        format.html { redirect_to @api_v1_reward, notice: 'Reward was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_reward }
      else
        format.html { render :new }
        format.json { render json: @api_v1_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/rewards/1
  # PATCH/PUT /api/v1/rewards/1.json
  def update
    respond_to do |format|
      if @api_v1_reward.update(api_v1_reward_params)
        format.html { redirect_to @api_v1_reward, notice: 'Reward was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_reward }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_reward.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/rewards/1
  # DELETE /api/v1/rewards/1.json
  def destroy
    @api_v1_reward.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_rewards_url, notice: 'Reward was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_reward
      @api_v1_reward = Api::V1::Reward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_reward_params
      params.fetch(:api_v1_reward, {})
    end
end
