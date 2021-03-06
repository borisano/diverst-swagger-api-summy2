class Api::V1::AnswersController < ApplicationController
  before_action :set_api_v1_answer, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/answers
  # GET /api/v1/answers.json
  def index
    @api_v1_answers = Api::V1::Answer.all
  end

  # GET /api/v1/answers/1
  # GET /api/v1/answers/1.json
  def show
  end

  # GET /api/v1/answers/new
  def new
    @api_v1_answer = Api::V1::Answer.new
  end

  # GET /api/v1/answers/1/edit
  def edit
  end

  # POST /api/v1/answers
  # POST /api/v1/answers.json
  def create
    @api_v1_answer = Api::V1::Answer.new(api_v1_answer_params)

    respond_to do |format|
      if @api_v1_answer.save
        format.html { redirect_to @api_v1_answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_answer }
      else
        format.html { render :new }
        format.json { render json: @api_v1_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/answers/1
  # PATCH/PUT /api/v1/answers/1.json
  def update
    respond_to do |format|
      if @api_v1_answer.update(api_v1_answer_params)
        format.html { redirect_to @api_v1_answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_answer }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/answers/1
  # DELETE /api/v1/answers/1.json
  def destroy
    @api_v1_answer.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_answer
      @api_v1_answer = Api::V1::Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_answer_params
      params.fetch(:api_v1_answer, {})
    end
end
