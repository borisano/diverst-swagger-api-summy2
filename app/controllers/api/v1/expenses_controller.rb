class Api::V1::ExpensesController < ApplicationController
  before_action :set_api_v1_expense, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/expenses
  # GET /api/v1/expenses.json
  def index
    @api_v1_expenses = Api::V1::Expense.all
  end

  # GET /api/v1/expenses/1
  # GET /api/v1/expenses/1.json
  def show
  end

  # GET /api/v1/expenses/new
  def new
    @api_v1_expense = Api::V1::Expense.new
  end

  # GET /api/v1/expenses/1/edit
  def edit
  end

  # POST /api/v1/expenses
  # POST /api/v1/expenses.json
  def create
    @api_v1_expense = Api::V1::Expense.new(api_v1_expense_params)

    respond_to do |format|
      if @api_v1_expense.save
        format.html { redirect_to @api_v1_expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_expense }
      else
        format.html { render :new }
        format.json { render json: @api_v1_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/expenses/1
  # PATCH/PUT /api/v1/expenses/1.json
  def update
    respond_to do |format|
      if @api_v1_expense.update(api_v1_expense_params)
        format.html { redirect_to @api_v1_expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_expense }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/expenses/1
  # DELETE /api/v1/expenses/1.json
  def destroy
    @api_v1_expense.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_expense
      @api_v1_expense = Api::V1::Expense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_expense_params
      params.fetch(:api_v1_expense, {})
    end
end
