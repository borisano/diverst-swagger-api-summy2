class Api::V1::FieldDataController < ApplicationController
  before_action :set_api_v1_field_datum, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/field_data
  # GET /api/v1/field_data.json
  def index
    @api_v1_field_data = Api::V1::FieldDatum.all
  end

  # GET /api/v1/field_data/1
  # GET /api/v1/field_data/1.json
  def show
  end

  # GET /api/v1/field_data/new
  def new
    @api_v1_field_datum = Api::V1::FieldDatum.new
  end

  # GET /api/v1/field_data/1/edit
  def edit
  end

  # POST /api/v1/field_data
  # POST /api/v1/field_data.json
  def create
    @api_v1_field_datum = Api::V1::FieldDatum.new(api_v1_field_datum_params)

    respond_to do |format|
      if @api_v1_field_datum.save
        format.html { redirect_to @api_v1_field_datum, notice: 'Field datum was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_field_datum }
      else
        format.html { render :new }
        format.json { render json: @api_v1_field_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/field_data/1
  # PATCH/PUT /api/v1/field_data/1.json
  def update
    respond_to do |format|
      if @api_v1_field_datum.update(api_v1_field_datum_params)
        format.html { redirect_to @api_v1_field_datum, notice: 'Field datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_field_datum }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_field_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/field_data/1
  # DELETE /api/v1/field_data/1.json
  def destroy
    @api_v1_field_datum.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_field_data_url, notice: 'Field datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_field_datum
      @api_v1_field_datum = Api::V1::FieldDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_field_datum_params
      params.fetch(:api_v1_field_datum, {})
    end
end
