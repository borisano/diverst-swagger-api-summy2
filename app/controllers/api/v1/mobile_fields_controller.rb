class Api::V1::MobileFieldsController < ApplicationController
  before_action :set_api_v1_mobile_field, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/mobile_fields
  # GET /api/v1/mobile_fields.json
  def index
    @api_v1_mobile_fields = Api::V1::MobileField.all
  end

  # GET /api/v1/mobile_fields/1
  # GET /api/v1/mobile_fields/1.json
  def show
  end

  # GET /api/v1/mobile_fields/new
  def new
    @api_v1_mobile_field = Api::V1::MobileField.new
  end

  # GET /api/v1/mobile_fields/1/edit
  def edit
  end

  # POST /api/v1/mobile_fields
  # POST /api/v1/mobile_fields.json
  def create
    @api_v1_mobile_field = Api::V1::MobileField.new(api_v1_mobile_field_params)

    respond_to do |format|
      if @api_v1_mobile_field.save
        format.html { redirect_to @api_v1_mobile_field, notice: 'Mobile field was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_mobile_field }
      else
        format.html { render :new }
        format.json { render json: @api_v1_mobile_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/mobile_fields/1
  # PATCH/PUT /api/v1/mobile_fields/1.json
  def update
    respond_to do |format|
      if @api_v1_mobile_field.update(api_v1_mobile_field_params)
        format.html { redirect_to @api_v1_mobile_field, notice: 'Mobile field was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_mobile_field }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_mobile_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/mobile_fields/1
  # DELETE /api/v1/mobile_fields/1.json
  def destroy
    @api_v1_mobile_field.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_mobile_fields_url, notice: 'Mobile field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_mobile_field
      @api_v1_mobile_field = Api::V1::MobileField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_mobile_field_params
      params.fetch(:api_v1_mobile_field, {})
    end
end
