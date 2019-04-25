class Api::V1::FoldersController < ApplicationController
  before_action :set_api_v1_folder, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/folders
  # GET /api/v1/folders.json
  def index
    @api_v1_folders = Api::V1::Folder.all
  end

  # GET /api/v1/folders/1
  # GET /api/v1/folders/1.json
  def show
  end

  # GET /api/v1/folders/new
  def new
    @api_v1_folder = Api::V1::Folder.new
  end

  # GET /api/v1/folders/1/edit
  def edit
  end

  # POST /api/v1/folders
  # POST /api/v1/folders.json
  def create
    @api_v1_folder = Api::V1::Folder.new(api_v1_folder_params)

    respond_to do |format|
      if @api_v1_folder.save
        format.html { redirect_to @api_v1_folder, notice: 'Folder was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_folder }
      else
        format.html { render :new }
        format.json { render json: @api_v1_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/folders/1
  # PATCH/PUT /api/v1/folders/1.json
  def update
    respond_to do |format|
      if @api_v1_folder.update(api_v1_folder_params)
        format.html { redirect_to @api_v1_folder, notice: 'Folder was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_folder }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/folders/1
  # DELETE /api/v1/folders/1.json
  def destroy
    @api_v1_folder.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_folders_url, notice: 'Folder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_folder
      @api_v1_folder = Api::V1::Folder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_folder_params
      params.fetch(:api_v1_folder, {})
    end
end
