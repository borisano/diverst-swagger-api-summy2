class Api::V1::CustomTextsController < ApplicationController
  before_action :set_api_v1_custom_text, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/custom_texts
  # GET /api/v1/custom_texts.json
  def index
    @api_v1_custom_texts = Api::V1::CustomText.all
  end

  # GET /api/v1/custom_texts/1
  # GET /api/v1/custom_texts/1.json
  def show
  end

  # GET /api/v1/custom_texts/new
  def new
    @api_v1_custom_text = Api::V1::CustomText.new
  end

  # GET /api/v1/custom_texts/1/edit
  def edit
  end

  # POST /api/v1/custom_texts
  # POST /api/v1/custom_texts.json
  def create
    @api_v1_custom_text = Api::V1::CustomText.new(api_v1_custom_text_params)

    respond_to do |format|
      if @api_v1_custom_text.save
        format.html { redirect_to @api_v1_custom_text, notice: 'Custom text was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_custom_text }
      else
        format.html { render :new }
        format.json { render json: @api_v1_custom_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/custom_texts/1
  # PATCH/PUT /api/v1/custom_texts/1.json
  def update
    respond_to do |format|
      if @api_v1_custom_text.update(api_v1_custom_text_params)
        format.html { redirect_to @api_v1_custom_text, notice: 'Custom text was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_custom_text }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_custom_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/custom_texts/1
  # DELETE /api/v1/custom_texts/1.json
  def destroy
    @api_v1_custom_text.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_custom_texts_url, notice: 'Custom text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_custom_text
      @api_v1_custom_text = Api::V1::CustomText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_custom_text_params
      params.fetch(:api_v1_custom_text, {})
    end
end
