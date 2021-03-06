class Api::V1::PolicyGroupTemplatesController < ApplicationController
  before_action :set_api_v1_policy_group_template, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/policy_group_templates
  # GET /api/v1/policy_group_templates.json
  def index
    @api_v1_policy_group_templates = Api::V1::PolicyGroupTemplate.all
  end

  # GET /api/v1/policy_group_templates/1
  # GET /api/v1/policy_group_templates/1.json
  def show
  end

  # GET /api/v1/policy_group_templates/new
  def new
    @api_v1_policy_group_template = Api::V1::PolicyGroupTemplate.new
  end

  # GET /api/v1/policy_group_templates/1/edit
  def edit
  end

  # POST /api/v1/policy_group_templates
  # POST /api/v1/policy_group_templates.json
  def create
    @api_v1_policy_group_template = Api::V1::PolicyGroupTemplate.new(api_v1_policy_group_template_params)

    respond_to do |format|
      if @api_v1_policy_group_template.save
        format.html { redirect_to @api_v1_policy_group_template, notice: 'Policy group template was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_policy_group_template }
      else
        format.html { render :new }
        format.json { render json: @api_v1_policy_group_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/policy_group_templates/1
  # PATCH/PUT /api/v1/policy_group_templates/1.json
  def update
    respond_to do |format|
      if @api_v1_policy_group_template.update(api_v1_policy_group_template_params)
        format.html { redirect_to @api_v1_policy_group_template, notice: 'Policy group template was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_policy_group_template }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_policy_group_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/policy_group_templates/1
  # DELETE /api/v1/policy_group_templates/1.json
  def destroy
    @api_v1_policy_group_template.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_policy_group_templates_url, notice: 'Policy group template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_policy_group_template
      @api_v1_policy_group_template = Api::V1::PolicyGroupTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_policy_group_template_params
      params.fetch(:api_v1_policy_group_template, {})
    end
end
