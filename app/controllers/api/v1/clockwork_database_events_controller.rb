class Api::V1::ClockworkDatabaseEventsController < ApplicationController
  before_action :set_api_v1_clockwork_database_event, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/clockwork_database_events
  # GET /api/v1/clockwork_database_events.json
  def index
    @api_v1_clockwork_database_events = Api::V1::ClockworkDatabaseEvent.all
  end

  # GET /api/v1/clockwork_database_events/1
  # GET /api/v1/clockwork_database_events/1.json
  def show
  end

  # GET /api/v1/clockwork_database_events/new
  def new
    @api_v1_clockwork_database_event = Api::V1::ClockworkDatabaseEvent.new
  end

  # GET /api/v1/clockwork_database_events/1/edit
  def edit
  end

  # POST /api/v1/clockwork_database_events
  # POST /api/v1/clockwork_database_events.json
  def create
    @api_v1_clockwork_database_event = Api::V1::ClockworkDatabaseEvent.new(api_v1_clockwork_database_event_params)

    respond_to do |format|
      if @api_v1_clockwork_database_event.save
        format.html { redirect_to @api_v1_clockwork_database_event, notice: 'Clockwork database event was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_clockwork_database_event }
      else
        format.html { render :new }
        format.json { render json: @api_v1_clockwork_database_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/clockwork_database_events/1
  # PATCH/PUT /api/v1/clockwork_database_events/1.json
  def update
    respond_to do |format|
      if @api_v1_clockwork_database_event.update(api_v1_clockwork_database_event_params)
        format.html { redirect_to @api_v1_clockwork_database_event, notice: 'Clockwork database event was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_clockwork_database_event }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_clockwork_database_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/clockwork_database_events/1
  # DELETE /api/v1/clockwork_database_events/1.json
  def destroy
    @api_v1_clockwork_database_event.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_clockwork_database_events_url, notice: 'Clockwork database event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_clockwork_database_event
      @api_v1_clockwork_database_event = Api::V1::ClockworkDatabaseEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_clockwork_database_event_params
      params.fetch(:api_v1_clockwork_database_event, {})
    end
end
