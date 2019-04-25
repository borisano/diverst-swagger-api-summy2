class Api::V1::FolderSharesController < ApplicationController
  before_action :set_api_v1_folder_share, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/folder_shares
  # GET /api/v1/folder_shares.json
  def index
    @api_v1_folder_shares = Api::V1::FolderShare.all
  end

  # GET /api/v1/folder_shares/1
  # GET /api/v1/folder_shares/1.json
  def show
  end

  # GET /api/v1/folder_shares/new
  def new
    @api_v1_folder_share = Api::V1::FolderShare.new
  end

  # GET /api/v1/folder_shares/1/edit
  def edit
  end

  # POST /api/v1/folder_shares
  # POST /api/v1/folder_shares.json
  def create
    @api_v1_folder_share = Api::V1::FolderShare.new(api_v1_folder_share_params)

    respond_to do |format|
      if @api_v1_folder_share.save
        format.html { redirect_to @api_v1_folder_share, notice: 'Folder share was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_folder_share }
      else
        format.html { render :new }
        format.json { render json: @api_v1_folder_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/folder_shares/1
  # PATCH/PUT /api/v1/folder_shares/1.json
  def update
    respond_to do |format|
      if @api_v1_folder_share.update(api_v1_folder_share_params)
        format.html { redirect_to @api_v1_folder_share, notice: 'Folder share was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_folder_share }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_folder_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/folder_shares/1
  # DELETE /api/v1/folder_shares/1.json
  def destroy
    @api_v1_folder_share.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_folder_shares_url, notice: 'Folder share was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_folder_share
      @api_v1_folder_share = Api::V1::FolderShare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_folder_share_params
      params.fetch(:api_v1_folder_share, {})
    end
end
