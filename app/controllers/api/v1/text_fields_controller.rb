class Api::V1::TextFieldsController < ApplicationController
  before_action :set_api_v1_text_field, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/text_fields
  # GET /api/v1/text_fields.json
  def index
    @api_v1_text_fields = Api::V1::TextField.all
  end

  # GET /api/v1/text_fields/1
  # GET /api/v1/text_fields/1.json
  def show
  end

  # GET /api/v1/text_fields/new
  def new
    @api_v1_text_field = Api::V1::TextField.new
  end

  # GET /api/v1/text_fields/1/edit
  def edit
  end

  # POST /api/v1/text_fields
  # POST /api/v1/text_fields.json
  def create
    @api_v1_text_field = Api::V1::TextField.new(api_v1_text_field_params)

    respond_to do |format|
      if @api_v1_text_field.save
        format.html { redirect_to @api_v1_text_field, notice: 'Text field was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_text_field }
      else
        format.html { render :new }
        format.json { render json: @api_v1_text_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/text_fields/1
  # PATCH/PUT /api/v1/text_fields/1.json
  def update
    respond_to do |format|
      if @api_v1_text_field.update(api_v1_text_field_params)
        format.html { redirect_to @api_v1_text_field, notice: 'Text field was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_text_field }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_text_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/text_fields/1
  # DELETE /api/v1/text_fields/1.json
  def destroy
    @api_v1_text_field.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_text_fields_url, notice: 'Text field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_text_field
      @api_v1_text_field = Api::V1::TextField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_text_field_params
      params.fetch(:api_v1_text_field, {})
    end
end
