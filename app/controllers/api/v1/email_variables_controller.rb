class Api::V1::EmailVariablesController < ApplicationController
  before_action :set_api_v1_email_variable, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/email_variables
  # GET /api/v1/email_variables.json
  def index
    @api_v1_email_variables = Api::V1::EmailVariable.all
  end

  # GET /api/v1/email_variables/1
  # GET /api/v1/email_variables/1.json
  def show
  end

  # GET /api/v1/email_variables/new
  def new
    @api_v1_email_variable = Api::V1::EmailVariable.new
  end

  # GET /api/v1/email_variables/1/edit
  def edit
  end

  # POST /api/v1/email_variables
  # POST /api/v1/email_variables.json
  def create
    @api_v1_email_variable = Api::V1::EmailVariable.new(api_v1_email_variable_params)

    respond_to do |format|
      if @api_v1_email_variable.save
        format.html { redirect_to @api_v1_email_variable, notice: 'Email variable was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_email_variable }
      else
        format.html { render :new }
        format.json { render json: @api_v1_email_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/email_variables/1
  # PATCH/PUT /api/v1/email_variables/1.json
  def update
    respond_to do |format|
      if @api_v1_email_variable.update(api_v1_email_variable_params)
        format.html { redirect_to @api_v1_email_variable, notice: 'Email variable was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_email_variable }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_email_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/email_variables/1
  # DELETE /api/v1/email_variables/1.json
  def destroy
    @api_v1_email_variable.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_email_variables_url, notice: 'Email variable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_email_variable
      @api_v1_email_variable = Api::V1::EmailVariable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_email_variable_params
      params.fetch(:api_v1_email_variable, {})
    end
end
