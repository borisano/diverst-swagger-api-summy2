class Api::V1::Filenames.txtsController < ApplicationController
  before_action :set_api_v1_filenames.txt, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/filenames.txts
  # GET /api/v1/filenames.txts.json
  def index
    @api_v1_filenames.txts = Api::V1::Filenames.txt.all
  end

  # GET /api/v1/filenames.txts/1
  # GET /api/v1/filenames.txts/1.json
  def show
  end

  # GET /api/v1/filenames.txts/new
  def new
    @api_v1_filenames.txt = Api::V1::Filenames.txt.new
  end

  # GET /api/v1/filenames.txts/1/edit
  def edit
  end

  # POST /api/v1/filenames.txts
  # POST /api/v1/filenames.txts.json
  def create
    @api_v1_filenames.txt = Api::V1::Filenames.txt.new(api_v1_filenames.txt_params)

    respond_to do |format|
      if @api_v1_filenames.txt.save
        format.html { redirect_to @api_v1_filenames.txt, notice: 'Filenames.txt was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_filenames.txt }
      else
        format.html { render :new }
        format.json { render json: @api_v1_filenames.txt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/filenames.txts/1
  # PATCH/PUT /api/v1/filenames.txts/1.json
  def update
    respond_to do |format|
      if @api_v1_filenames.txt.update(api_v1_filenames.txt_params)
        format.html { redirect_to @api_v1_filenames.txt, notice: 'Filenames.txt was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_filenames.txt }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_filenames.txt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/filenames.txts/1
  # DELETE /api/v1/filenames.txts/1.json
  def destroy
    @api_v1_filenames.txt.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_filenames.txts_url, notice: 'Filenames.txt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_filenames.txt
      @api_v1_filenames.txt = Api::V1::Filenames.txt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_filenames.txt_params
      params.fetch(:api_v1_filenames.txt, {})
    end
end
