class Api::V1::OutcomesController < ApplicationController
  before_action :set_api_v1_outcome, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/outcomes
  # GET /api/v1/outcomes.json
  def index
    @api_v1_outcomes = Api::V1::Outcome.all
  end

  # GET /api/v1/outcomes/1
  # GET /api/v1/outcomes/1.json
  def show
  end

  # GET /api/v1/outcomes/new
  def new
    @api_v1_outcome = Api::V1::Outcome.new
  end

  # GET /api/v1/outcomes/1/edit
  def edit
  end

  # POST /api/v1/outcomes
  # POST /api/v1/outcomes.json
  def create
    @api_v1_outcome = Api::V1::Outcome.new(api_v1_outcome_params)

    respond_to do |format|
      if @api_v1_outcome.save
        format.html { redirect_to @api_v1_outcome, notice: 'Outcome was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_outcome }
      else
        format.html { render :new }
        format.json { render json: @api_v1_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/outcomes/1
  # PATCH/PUT /api/v1/outcomes/1.json
  def update
    respond_to do |format|
      if @api_v1_outcome.update(api_v1_outcome_params)
        format.html { redirect_to @api_v1_outcome, notice: 'Outcome was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_outcome }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/outcomes/1
  # DELETE /api/v1/outcomes/1.json
  def destroy
    @api_v1_outcome.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_outcomes_url, notice: 'Outcome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_outcome
      @api_v1_outcome = Api::V1::Outcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_outcome_params
      params.fetch(:api_v1_outcome, {})
    end
end
