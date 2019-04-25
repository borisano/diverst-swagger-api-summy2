class Api::V1::ViewsController < ApplicationController
  before_action :set_api_v1_view, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/views
  # GET /api/v1/views.json
  def index
    @api_v1_views = Api::V1::View.all
  end

  # GET /api/v1/views/1
  # GET /api/v1/views/1.json
  def show
  end

  # GET /api/v1/views/new
  def new
    @api_v1_view = Api::V1::View.new
  end

  # GET /api/v1/views/1/edit
  def edit
  end

  # POST /api/v1/views
  # POST /api/v1/views.json
  def create
    @api_v1_view = Api::V1::View.new(api_v1_view_params)

    respond_to do |format|
      if @api_v1_view.save
        format.html { redirect_to @api_v1_view, notice: 'View was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_view }
      else
        format.html { render :new }
        format.json { render json: @api_v1_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/views/1
  # PATCH/PUT /api/v1/views/1.json
  def update
    respond_to do |format|
      if @api_v1_view.update(api_v1_view_params)
        format.html { redirect_to @api_v1_view, notice: 'View was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_view }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/views/1
  # DELETE /api/v1/views/1.json
  def destroy
    @api_v1_view.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_views_url, notice: 'View was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_view
      @api_v1_view = Api::V1::View.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_view_params
      params.fetch(:api_v1_view, {})
    end
end
