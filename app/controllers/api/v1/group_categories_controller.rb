class Api::V1::GroupCategoriesController < ApplicationController
  before_action :set_api_v1_group_category, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/group_categories
  # GET /api/v1/group_categories.json
  def index
    @api_v1_group_categories = Api::V1::GroupCategory.all
  end

  # GET /api/v1/group_categories/1
  # GET /api/v1/group_categories/1.json
  def show
  end

  # GET /api/v1/group_categories/new
  def new
    @api_v1_group_category = Api::V1::GroupCategory.new
  end

  # GET /api/v1/group_categories/1/edit
  def edit
  end

  # POST /api/v1/group_categories
  # POST /api/v1/group_categories.json
  def create
    @api_v1_group_category = Api::V1::GroupCategory.new(api_v1_group_category_params)

    respond_to do |format|
      if @api_v1_group_category.save
        format.html { redirect_to @api_v1_group_category, notice: 'Group category was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_group_category }
      else
        format.html { render :new }
        format.json { render json: @api_v1_group_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/group_categories/1
  # PATCH/PUT /api/v1/group_categories/1.json
  def update
    respond_to do |format|
      if @api_v1_group_category.update(api_v1_group_category_params)
        format.html { redirect_to @api_v1_group_category, notice: 'Group category was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_group_category }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_group_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/group_categories/1
  # DELETE /api/v1/group_categories/1.json
  def destroy
    @api_v1_group_category.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_group_categories_url, notice: 'Group category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_group_category
      @api_v1_group_category = Api::V1::GroupCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_group_category_params
      params.fetch(:api_v1_group_category, {})
    end
end
