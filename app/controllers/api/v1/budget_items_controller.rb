class Api::V1::BudgetItemsController < ApplicationController
  before_action :set_api_v1_budget_item, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/budget_items
  # GET /api/v1/budget_items.json
  def index
    @api_v1_budget_items = Api::V1::BudgetItem.all
  end

  # GET /api/v1/budget_items/1
  # GET /api/v1/budget_items/1.json
  def show
  end

  # GET /api/v1/budget_items/new
  def new
    @api_v1_budget_item = Api::V1::BudgetItem.new
  end

  # GET /api/v1/budget_items/1/edit
  def edit
  end

  # POST /api/v1/budget_items
  # POST /api/v1/budget_items.json
  def create
    @api_v1_budget_item = Api::V1::BudgetItem.new(api_v1_budget_item_params)

    respond_to do |format|
      if @api_v1_budget_item.save
        format.html { redirect_to @api_v1_budget_item, notice: 'Budget item was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_budget_item }
      else
        format.html { render :new }
        format.json { render json: @api_v1_budget_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/budget_items/1
  # PATCH/PUT /api/v1/budget_items/1.json
  def update
    respond_to do |format|
      if @api_v1_budget_item.update(api_v1_budget_item_params)
        format.html { redirect_to @api_v1_budget_item, notice: 'Budget item was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_budget_item }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_budget_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/budget_items/1
  # DELETE /api/v1/budget_items/1.json
  def destroy
    @api_v1_budget_item.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_budget_items_url, notice: 'Budget item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_budget_item
      @api_v1_budget_item = Api::V1::BudgetItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_budget_item_params
      params.fetch(:api_v1_budget_item, {})
    end
end
