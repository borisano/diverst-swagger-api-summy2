class Api::V1::ChecklistsController < ApplicationController
  before_action :set_api_v1_checklist, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/checklists
  # GET /api/v1/checklists.json
  def index
    @api_v1_checklists = Api::V1::Checklist.all
  end

  # GET /api/v1/checklists/1
  # GET /api/v1/checklists/1.json
  def show
  end

  # GET /api/v1/checklists/new
  def new
    @api_v1_checklist = Api::V1::Checklist.new
  end

  # GET /api/v1/checklists/1/edit
  def edit
  end

  # POST /api/v1/checklists
  # POST /api/v1/checklists.json
  def create
    @api_v1_checklist = Api::V1::Checklist.new(api_v1_checklist_params)

    respond_to do |format|
      if @api_v1_checklist.save
        format.html { redirect_to @api_v1_checklist, notice: 'Checklist was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_checklist }
      else
        format.html { render :new }
        format.json { render json: @api_v1_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/checklists/1
  # PATCH/PUT /api/v1/checklists/1.json
  def update
    respond_to do |format|
      if @api_v1_checklist.update(api_v1_checklist_params)
        format.html { redirect_to @api_v1_checklist, notice: 'Checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_checklist }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/checklists/1
  # DELETE /api/v1/checklists/1.json
  def destroy
    @api_v1_checklist.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_checklists_url, notice: 'Checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_checklist
      @api_v1_checklist = Api::V1::Checklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_checklist_params
      params.fetch(:api_v1_checklist, {})
    end
end
