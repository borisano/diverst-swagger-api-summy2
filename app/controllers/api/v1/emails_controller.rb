class Api::V1::EmailsController < ApplicationController
  before_action :set_api_v1_email, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/emails
  # GET /api/v1/emails.json
  def index
    @api_v1_emails = Api::V1::Email.all
  end

  # GET /api/v1/emails/1
  # GET /api/v1/emails/1.json
  def show
  end

  # GET /api/v1/emails/new
  def new
    @api_v1_email = Api::V1::Email.new
  end

  # GET /api/v1/emails/1/edit
  def edit
  end

  # POST /api/v1/emails
  # POST /api/v1/emails.json
  def create
    @api_v1_email = Api::V1::Email.new(api_v1_email_params)

    respond_to do |format|
      if @api_v1_email.save
        format.html { redirect_to @api_v1_email, notice: 'Email was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_email }
      else
        format.html { render :new }
        format.json { render json: @api_v1_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/emails/1
  # PATCH/PUT /api/v1/emails/1.json
  def update
    respond_to do |format|
      if @api_v1_email.update(api_v1_email_params)
        format.html { redirect_to @api_v1_email, notice: 'Email was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_email }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/emails/1
  # DELETE /api/v1/emails/1.json
  def destroy
    @api_v1_email.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_emails_url, notice: 'Email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_email
      @api_v1_email = Api::V1::Email.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_email_params
      params.fetch(:api_v1_email, {})
    end
end
