class Api::V1::InitiativeExpensesController < ApplicationController
  before_action :set_api_v1_initiative_expense, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/initiative_expenses
  # GET /api/v1/initiative_expenses.json
  def index
    @api_v1_initiative_expenses = Api::V1::InitiativeExpense.all
  end

  # GET /api/v1/initiative_expenses/1
  # GET /api/v1/initiative_expenses/1.json
  def show
  end

  # GET /api/v1/initiative_expenses/new
  def new
    @api_v1_initiative_expense = Api::V1::InitiativeExpense.new
  end

  # GET /api/v1/initiative_expenses/1/edit
  def edit
  end

  # POST /api/v1/initiative_expenses
  # POST /api/v1/initiative_expenses.json
  def create
    @api_v1_initiative_expense = Api::V1::InitiativeExpense.new(api_v1_initiative_expense_params)

    respond_to do |format|
      if @api_v1_initiative_expense.save
        format.html { redirect_to @api_v1_initiative_expense, notice: 'Initiative expense was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_initiative_expense }
      else
        format.html { render :new }
        format.json { render json: @api_v1_initiative_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/initiative_expenses/1
  # PATCH/PUT /api/v1/initiative_expenses/1.json
  def update
    respond_to do |format|
      if @api_v1_initiative_expense.update(api_v1_initiative_expense_params)
        format.html { redirect_to @api_v1_initiative_expense, notice: 'Initiative expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_initiative_expense }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_initiative_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/initiative_expenses/1
  # DELETE /api/v1/initiative_expenses/1.json
  def destroy
    @api_v1_initiative_expense.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_initiative_expenses_url, notice: 'Initiative expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_initiative_expense
      @api_v1_initiative_expense = Api::V1::InitiativeExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_initiative_expense_params
      params.fetch(:api_v1_initiative_expense, {})
    end
end
