class Api::V1::SegmentRulesController < ApplicationController
  before_action :set_api_v1_segment_rule, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/segment_rules
  # GET /api/v1/segment_rules.json
  def index
    @api_v1_segment_rules = Api::V1::SegmentRule.all
  end

  # GET /api/v1/segment_rules/1
  # GET /api/v1/segment_rules/1.json
  def show
  end

  # GET /api/v1/segment_rules/new
  def new
    @api_v1_segment_rule = Api::V1::SegmentRule.new
  end

  # GET /api/v1/segment_rules/1/edit
  def edit
  end

  # POST /api/v1/segment_rules
  # POST /api/v1/segment_rules.json
  def create
    @api_v1_segment_rule = Api::V1::SegmentRule.new(api_v1_segment_rule_params)

    respond_to do |format|
      if @api_v1_segment_rule.save
        format.html { redirect_to @api_v1_segment_rule, notice: 'Segment rule was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_segment_rule }
      else
        format.html { render :new }
        format.json { render json: @api_v1_segment_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/segment_rules/1
  # PATCH/PUT /api/v1/segment_rules/1.json
  def update
    respond_to do |format|
      if @api_v1_segment_rule.update(api_v1_segment_rule_params)
        format.html { redirect_to @api_v1_segment_rule, notice: 'Segment rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_segment_rule }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_segment_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/segment_rules/1
  # DELETE /api/v1/segment_rules/1.json
  def destroy
    @api_v1_segment_rule.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_segment_rules_url, notice: 'Segment rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_segment_rule
      @api_v1_segment_rule = Api::V1::SegmentRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_segment_rule_params
      params.fetch(:api_v1_segment_rule, {})
    end
end
