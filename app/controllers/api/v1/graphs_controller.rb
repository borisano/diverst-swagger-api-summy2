class Api::V1::GraphsController < ApplicationController
  before_action :set_api_v1_graph, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/graphs
  # GET /api/v1/graphs.json
  def index
    @api_v1_graphs = Api::V1::Graph.all
  end

  # GET /api/v1/graphs/1
  # GET /api/v1/graphs/1.json
  def show
  end

  # GET /api/v1/graphs/new
  def new
    @api_v1_graph = Api::V1::Graph.new
  end

  # GET /api/v1/graphs/1/edit
  def edit
  end

  # POST /api/v1/graphs
  # POST /api/v1/graphs.json
  def create
    @api_v1_graph = Api::V1::Graph.new(api_v1_graph_params)

    respond_to do |format|
      if @api_v1_graph.save
        format.html { redirect_to @api_v1_graph, notice: 'Graph was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_graph }
      else
        format.html { render :new }
        format.json { render json: @api_v1_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/graphs/1
  # PATCH/PUT /api/v1/graphs/1.json
  def update
    respond_to do |format|
      if @api_v1_graph.update(api_v1_graph_params)
        format.html { redirect_to @api_v1_graph, notice: 'Graph was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_graph }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_graph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/graphs/1
  # DELETE /api/v1/graphs/1.json
  def destroy
    @api_v1_graph.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_graphs_url, notice: 'Graph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_graph
      @api_v1_graph = Api::V1::Graph.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_graph_params
      params.fetch(:api_v1_graph, {})
    end
end
