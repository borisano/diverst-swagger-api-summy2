class Api::V1::QuestionsController < ApplicationController
  before_action :set_api_v1_question, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/questions
  # GET /api/v1/questions.json
  def index
    @api_v1_questions = Api::V1::Question.all
  end

  # GET /api/v1/questions/1
  # GET /api/v1/questions/1.json
  def show
  end

  # GET /api/v1/questions/new
  def new
    @api_v1_question = Api::V1::Question.new
  end

  # GET /api/v1/questions/1/edit
  def edit
  end

  # POST /api/v1/questions
  # POST /api/v1/questions.json
  def create
    @api_v1_question = Api::V1::Question.new(api_v1_question_params)

    respond_to do |format|
      if @api_v1_question.save
        format.html { redirect_to @api_v1_question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_question }
      else
        format.html { render :new }
        format.json { render json: @api_v1_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/questions/1
  # PATCH/PUT /api/v1/questions/1.json
  def update
    respond_to do |format|
      if @api_v1_question.update(api_v1_question_params)
        format.html { redirect_to @api_v1_question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_question }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/questions/1
  # DELETE /api/v1/questions/1.json
  def destroy
    @api_v1_question.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_question
      @api_v1_question = Api::V1::Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_question_params
      params.fetch(:api_v1_question, {})
    end
end
