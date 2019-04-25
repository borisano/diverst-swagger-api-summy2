class Api::V1::BaseElasticsearchesController < ApplicationController
  before_action :set_api_v1_base_elasticsearch, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/base_elasticsearches
  # GET /api/v1/base_elasticsearches.json
  def index
    @api_v1_base_elasticsearches = Api::V1::BaseElasticsearch.all
  end

  # GET /api/v1/base_elasticsearches/1
  # GET /api/v1/base_elasticsearches/1.json
  def show
  end

  # GET /api/v1/base_elasticsearches/new
  def new
    @api_v1_base_elasticsearch = Api::V1::BaseElasticsearch.new
  end

  # GET /api/v1/base_elasticsearches/1/edit
  def edit
  end

  # POST /api/v1/base_elasticsearches
  # POST /api/v1/base_elasticsearches.json
  def create
    @api_v1_base_elasticsearch = Api::V1::BaseElasticsearch.new(api_v1_base_elasticsearch_params)

    respond_to do |format|
      if @api_v1_base_elasticsearch.save
        format.html { redirect_to @api_v1_base_elasticsearch, notice: 'Base elasticsearch was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_base_elasticsearch }
      else
        format.html { render :new }
        format.json { render json: @api_v1_base_elasticsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/base_elasticsearches/1
  # PATCH/PUT /api/v1/base_elasticsearches/1.json
  def update
    respond_to do |format|
      if @api_v1_base_elasticsearch.update(api_v1_base_elasticsearch_params)
        format.html { redirect_to @api_v1_base_elasticsearch, notice: 'Base elasticsearch was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_base_elasticsearch }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_base_elasticsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/base_elasticsearches/1
  # DELETE /api/v1/base_elasticsearches/1.json
  def destroy
    @api_v1_base_elasticsearch.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_base_elasticsearches_url, notice: 'Base elasticsearch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_base_elasticsearch
      @api_v1_base_elasticsearch = Api::V1::BaseElasticsearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_base_elasticsearch_params
      params.fetch(:api_v1_base_elasticsearch, {})
    end
end
