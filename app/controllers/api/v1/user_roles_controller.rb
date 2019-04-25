class Api::V1::UserRolesController < ApplicationController
  before_action :set_api_v1_user_role, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/user_roles
  # GET /api/v1/user_roles.json
  def index
    @api_v1_user_roles = Api::V1::UserRole.all
  end

  # GET /api/v1/user_roles/1
  # GET /api/v1/user_roles/1.json
  def show
  end

  # GET /api/v1/user_roles/new
  def new
    @api_v1_user_role = Api::V1::UserRole.new
  end

  # GET /api/v1/user_roles/1/edit
  def edit
  end

  # POST /api/v1/user_roles
  # POST /api/v1/user_roles.json
  def create
    @api_v1_user_role = Api::V1::UserRole.new(api_v1_user_role_params)

    respond_to do |format|
      if @api_v1_user_role.save
        format.html { redirect_to @api_v1_user_role, notice: 'User role was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_user_role }
      else
        format.html { render :new }
        format.json { render json: @api_v1_user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/user_roles/1
  # PATCH/PUT /api/v1/user_roles/1.json
  def update
    respond_to do |format|
      if @api_v1_user_role.update(api_v1_user_role_params)
        format.html { redirect_to @api_v1_user_role, notice: 'User role was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_user_role }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/user_roles/1
  # DELETE /api/v1/user_roles/1.json
  def destroy
    @api_v1_user_role.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_user_roles_url, notice: 'User role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user_role
      @api_v1_user_role = Api::V1::UserRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_user_role_params
      params.fetch(:api_v1_user_role, {})
    end
end
