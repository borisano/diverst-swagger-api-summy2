class Api::V1::BudgetsController < ApplicationController
  before_action :set_api_v1_budget, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/budgets
  # GET /api/v1/budgets.json
  def index
    @api_v1_budgets = Api::V1::Budget.all
  end

  # GET /api/v1/budgets/1
  # GET /api/v1/budgets/1.json
  def show
  end

  # GET /api/v1/budgets/new
  def new
    @api_v1_budget = Api::V1::Budget.new
  end

  # GET /api/v1/budgets/1/edit
  def edit
  end

  # POST /api/v1/budgets
  # POST /api/v1/budgets.json
  def create
    @api_v1_budget = Api::V1::Budget.new(api_v1_budget_params)

    respond_to do |format|
      if @api_v1_budget.save
        format.html { redirect_to @api_v1_budget, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_budget }
      else
        format.html { render :new }
        format.json { render json: @api_v1_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/budgets/1
  # PATCH/PUT /api/v1/budgets/1.json
  def update
    respond_to do |format|
      if @api_v1_budget.update(api_v1_budget_params)
        format.html { redirect_to @api_v1_budget, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_budget }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/budgets/1
  # DELETE /api/v1/budgets/1.json
  def destroy
    @api_v1_budget.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_budget
      @api_v1_budget = Api::V1::Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_budget_params
      params.fetch(:api_v1_budget, {})
    end
end
