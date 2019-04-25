class Api::V1::BaseClassesController < ApplicationController
  before_action :set_api_v1_base_class, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/base_classes
  # GET /api/v1/base_classes.json
  def index
    @api_v1_base_classes = Api::V1::BaseClass.all
  end

  # GET /api/v1/base_classes/1
  # GET /api/v1/base_classes/1.json
  def show
  end

  # GET /api/v1/base_classes/new
  def new
    @api_v1_base_class = Api::V1::BaseClass.new
  end

  # GET /api/v1/base_classes/1/edit
  def edit
  end

  # POST /api/v1/base_classes
  # POST /api/v1/base_classes.json
  def create
    @api_v1_base_class = Api::V1::BaseClass.new(api_v1_base_class_params)

    respond_to do |format|
      if @api_v1_base_class.save
        format.html { redirect_to @api_v1_base_class, notice: 'Base class was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_base_class }
      else
        format.html { render :new }
        format.json { render json: @api_v1_base_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/base_classes/1
  # PATCH/PUT /api/v1/base_classes/1.json
  def update
    respond_to do |format|
      if @api_v1_base_class.update(api_v1_base_class_params)
        format.html { redirect_to @api_v1_base_class, notice: 'Base class was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_base_class }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_base_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/base_classes/1
  # DELETE /api/v1/base_classes/1.json
  def destroy
    @api_v1_base_class.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_base_classes_url, notice: 'Base class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_base_class
      @api_v1_base_class = Api::V1::BaseClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_base_class_params
      params.fetch(:api_v1_base_class, {})
    end
end
