class Api::V1::ThemesController < ApplicationController
  before_action :set_api_v1_theme, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/themes
  # GET /api/v1/themes.json
  def index
    @api_v1_themes = Api::V1::Theme.all
  end

  # GET /api/v1/themes/1
  # GET /api/v1/themes/1.json
  def show
  end

  # GET /api/v1/themes/new
  def new
    @api_v1_theme = Api::V1::Theme.new
  end

  # GET /api/v1/themes/1/edit
  def edit
  end

  # POST /api/v1/themes
  # POST /api/v1/themes.json
  def create
    @api_v1_theme = Api::V1::Theme.new(api_v1_theme_params)

    respond_to do |format|
      if @api_v1_theme.save
        format.html { redirect_to @api_v1_theme, notice: 'Theme was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_theme }
      else
        format.html { render :new }
        format.json { render json: @api_v1_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/themes/1
  # PATCH/PUT /api/v1/themes/1.json
  def update
    respond_to do |format|
      if @api_v1_theme.update(api_v1_theme_params)
        format.html { redirect_to @api_v1_theme, notice: 'Theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_theme }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/themes/1
  # DELETE /api/v1/themes/1.json
  def destroy
    @api_v1_theme.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_themes_url, notice: 'Theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_theme
      @api_v1_theme = Api::V1::Theme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_theme_params
      params.fetch(:api_v1_theme, {})
    end
end
