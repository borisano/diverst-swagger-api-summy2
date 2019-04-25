class Api::V1::GroupMessagesController < ApplicationController
  before_action :set_api_v1_group_message, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/group_messages
  # GET /api/v1/group_messages.json
  def index
    @api_v1_group_messages = Api::V1::GroupMessage.all
  end

  # GET /api/v1/group_messages/1
  # GET /api/v1/group_messages/1.json
  def show
  end

  # GET /api/v1/group_messages/new
  def new
    @api_v1_group_message = Api::V1::GroupMessage.new
  end

  # GET /api/v1/group_messages/1/edit
  def edit
  end

  # POST /api/v1/group_messages
  # POST /api/v1/group_messages.json
  def create
    @api_v1_group_message = Api::V1::GroupMessage.new(api_v1_group_message_params)

    respond_to do |format|
      if @api_v1_group_message.save
        format.html { redirect_to @api_v1_group_message, notice: 'Group message was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_group_message }
      else
        format.html { render :new }
        format.json { render json: @api_v1_group_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/group_messages/1
  # PATCH/PUT /api/v1/group_messages/1.json
  def update
    respond_to do |format|
      if @api_v1_group_message.update(api_v1_group_message_params)
        format.html { redirect_to @api_v1_group_message, notice: 'Group message was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_group_message }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_group_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/group_messages/1
  # DELETE /api/v1/group_messages/1.json
  def destroy
    @api_v1_group_message.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_group_messages_url, notice: 'Group message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_group_message
      @api_v1_group_message = Api::V1::GroupMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_group_message_params
      params.fetch(:api_v1_group_message, {})
    end
end
