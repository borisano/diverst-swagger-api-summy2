class Api::V1::FieldsController < ApplicationController
  before_action :set_api_v1_field, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/fields
  # GET /api/v1/fields.json
  def index
    @api_v1_fields = Api::V1::Field.all
  end

  # GET /api/v1/fields/1
  # GET /api/v1/fields/1.json
  def show
  end

  # GET /api/v1/fields/new
  def new
    @api_v1_field = Api::V1::Field.new
  end

  # GET /api/v1/fields/1/edit
  def edit
  end

  # POST /api/v1/fields
  # POST /api/v1/fields.json
  def create
    @api_v1_field = Api::V1::Field.new(api_v1_field_params)

    respond_to do |format|
      if @api_v1_field.save
        format.html { redirect_to @api_v1_field, notice: 'Field was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_field }
      else
        format.html { render :new }
        format.json { render json: @api_v1_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/fields/1
  # PATCH/PUT /api/v1/fields/1.json
  def update
    respond_to do |format|
      if @api_v1_field.update(api_v1_field_params)
        format.html { redirect_to @api_v1_field, notice: 'Field was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_field }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/fields/1
  # DELETE /api/v1/fields/1.json
  def destroy
    @api_v1_field.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_fields_url, notice: 'Field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_field
      @api_v1_field = Api::V1::Field.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_field_params
      params.fetch(:api_v1_field, {})
    end
end
