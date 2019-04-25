class Api::V1::FrequencyPeriodsController < ApplicationController
  before_action :set_api_v1_frequency_period, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/frequency_periods
  # GET /api/v1/frequency_periods.json
  def index
    @api_v1_frequency_periods = Api::V1::FrequencyPeriod.all
  end

  # GET /api/v1/frequency_periods/1
  # GET /api/v1/frequency_periods/1.json
  def show
  end

  # GET /api/v1/frequency_periods/new
  def new
    @api_v1_frequency_period = Api::V1::FrequencyPeriod.new
  end

  # GET /api/v1/frequency_periods/1/edit
  def edit
  end

  # POST /api/v1/frequency_periods
  # POST /api/v1/frequency_periods.json
  def create
    @api_v1_frequency_period = Api::V1::FrequencyPeriod.new(api_v1_frequency_period_params)

    respond_to do |format|
      if @api_v1_frequency_period.save
        format.html { redirect_to @api_v1_frequency_period, notice: 'Frequency period was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_frequency_period }
      else
        format.html { render :new }
        format.json { render json: @api_v1_frequency_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/frequency_periods/1
  # PATCH/PUT /api/v1/frequency_periods/1.json
  def update
    respond_to do |format|
      if @api_v1_frequency_period.update(api_v1_frequency_period_params)
        format.html { redirect_to @api_v1_frequency_period, notice: 'Frequency period was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_frequency_period }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_frequency_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/frequency_periods/1
  # DELETE /api/v1/frequency_periods/1.json
  def destroy
    @api_v1_frequency_period.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_frequency_periods_url, notice: 'Frequency period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_frequency_period
      @api_v1_frequency_period = Api::V1::FrequencyPeriod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_frequency_period_params
      params.fetch(:api_v1_frequency_period, {})
    end
end
