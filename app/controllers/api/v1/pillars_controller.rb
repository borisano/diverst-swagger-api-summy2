class Api::V1::PillarsController < ApplicationController
  before_action :set_api_v1_pillar, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/pillars
  # GET /api/v1/pillars.json
  def index
    @api_v1_pillars = Api::V1::Pillar.all
  end

  # GET /api/v1/pillars/1
  # GET /api/v1/pillars/1.json
  def show
  end

  # GET /api/v1/pillars/new
  def new
    @api_v1_pillar = Api::V1::Pillar.new
  end

  # GET /api/v1/pillars/1/edit
  def edit
  end

  # POST /api/v1/pillars
  # POST /api/v1/pillars.json
  def create
    @api_v1_pillar = Api::V1::Pillar.new(api_v1_pillar_params)

    respond_to do |format|
      if @api_v1_pillar.save
        format.html { redirect_to @api_v1_pillar, notice: 'Pillar was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_pillar }
      else
        format.html { render :new }
        format.json { render json: @api_v1_pillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/pillars/1
  # PATCH/PUT /api/v1/pillars/1.json
  def update
    respond_to do |format|
      if @api_v1_pillar.update(api_v1_pillar_params)
        format.html { redirect_to @api_v1_pillar, notice: 'Pillar was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_pillar }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_pillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/pillars/1
  # DELETE /api/v1/pillars/1.json
  def destroy
    @api_v1_pillar.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_pillars_url, notice: 'Pillar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_pillar
      @api_v1_pillar = Api::V1::Pillar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_pillar_params
      params.fetch(:api_v1_pillar, {})
    end
end
