class Api::V1::BaseSearchesController < ApplicationController
  before_action :set_api_v1_base_search, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/base_searches
  # GET /api/v1/base_searches.json
  def index
    @api_v1_base_searches = Api::V1::BaseSearch.all
  end

  # GET /api/v1/base_searches/1
  # GET /api/v1/base_searches/1.json
  def show
  end

  # GET /api/v1/base_searches/new
  def new
    @api_v1_base_search = Api::V1::BaseSearch.new
  end

  # GET /api/v1/base_searches/1/edit
  def edit
  end

  # POST /api/v1/base_searches
  # POST /api/v1/base_searches.json
  def create
    @api_v1_base_search = Api::V1::BaseSearch.new(api_v1_base_search_params)

    respond_to do |format|
      if @api_v1_base_search.save
        format.html { redirect_to @api_v1_base_search, notice: 'Base search was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_base_search }
      else
        format.html { render :new }
        format.json { render json: @api_v1_base_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/base_searches/1
  # PATCH/PUT /api/v1/base_searches/1.json
  def update
    respond_to do |format|
      if @api_v1_base_search.update(api_v1_base_search_params)
        format.html { redirect_to @api_v1_base_search, notice: 'Base search was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_base_search }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_base_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/base_searches/1
  # DELETE /api/v1/base_searches/1.json
  def destroy
    @api_v1_base_search.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_base_searches_url, notice: 'Base search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_base_search
      @api_v1_base_search = Api::V1::BaseSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_base_search_params
      params.fetch(:api_v1_base_search, {})
    end
end
