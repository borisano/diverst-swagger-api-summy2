class Api::V1::BaseGraphsController < ApplicationController
  before_action :set_api_v1_base_graph, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/base_graphs
  # GET /api/v1/base_graphs.json
  def index
    @api_v1_base_graphs = Api::V1::BaseGraph.all
  end

  # GET /api/v1/base_graphs/1
  # GET /api/v1/base_graphs/1.json
  def show
  end

  # GET /api/v1/base_graphs/new
  def new
    @api_v1_base_graph = Api::V1::BaseGraph.new
  end

  # GET /api/v1/base_graphs/1/edit
  def edit
  end

  # POST /api/v1/base_graphs
  # POST /api/v1/base_graphs.json
  def create
    @api_v1_base_graph = Api::V1::BaseGraph.new(api_v1_base_graph_params)

    respond_to do |format|
      if @api_v1_base_graph.save
        format.html { redirect_to @api_v1_base_graph, notice: 'Base graph was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_base_graph }
      else
        format.html { render :new }
        format.json { render json: @api_v1_base_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/base_graphs/1
  # PATCH/PUT /api/v1/base_graphs/1.json
  def update
    respond_to do |format|
      if @api_v1_base_graph.update(api_v1_base_graph_params)
        format.html { redirect_to @api_v1_base_graph, notice: 'Base graph was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_base_graph }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_base_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/base_graphs/1
  # DELETE /api/v1/base_graphs/1.json
  def destroy
    @api_v1_base_graph.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_base_graphs_url, notice: 'Base graph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_base_graph
      @api_v1_base_graph = Api::V1::BaseGraph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_base_graph_params
      params.fetch(:api_v1_base_graph, {})
    end
end
