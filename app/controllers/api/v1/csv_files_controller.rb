class Api::V1::CsvFilesController < ApplicationController
  before_action :set_api_v1_csv_file, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/csv_files
  # GET /api/v1/csv_files.json
  def index
    @api_v1_csv_files = Api::V1::CsvFile.all
  end

  # GET /api/v1/csv_files/1
  # GET /api/v1/csv_files/1.json
  def show
  end

  # GET /api/v1/csv_files/new
  def new
    @api_v1_csv_file = Api::V1::CsvFile.new
  end

  # GET /api/v1/csv_files/1/edit
  def edit
  end

  # POST /api/v1/csv_files
  # POST /api/v1/csv_files.json
  def create
    @api_v1_csv_file = Api::V1::CsvFile.new(api_v1_csv_file_params)

    respond_to do |format|
      if @api_v1_csv_file.save
        format.html { redirect_to @api_v1_csv_file, notice: 'Csv file was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_csv_file }
      else
        format.html { render :new }
        format.json { render json: @api_v1_csv_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/csv_files/1
  # PATCH/PUT /api/v1/csv_files/1.json
  def update
    respond_to do |format|
      if @api_v1_csv_file.update(api_v1_csv_file_params)
        format.html { redirect_to @api_v1_csv_file, notice: 'Csv file was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_csv_file }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_csv_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/csv_files/1
  # DELETE /api/v1/csv_files/1.json
  def destroy
    @api_v1_csv_file.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_csv_files_url, notice: 'Csv file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_csv_file
      @api_v1_csv_file = Api::V1::CsvFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_csv_file_params
      params.fetch(:api_v1_csv_file, {})
    end
end
