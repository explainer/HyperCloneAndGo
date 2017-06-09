class WaterManagersController < ApplicationController
  before_action :set_water_manager, only: [:show, :edit, :update, :destroy]

  # GET /water_managers
  # GET /water_managers.json
  def index
    @water_managers = WaterManager.all
  end

  # GET /water_managers/1
  # GET /water_managers/1.json
  def show
  end

  # GET /water_managers/new
  def new
    @water_manager = WaterManager.new
  end

  # GET /water_managers/1/edit
  def edit
  end

  # POST /water_managers
  # POST /water_managers.json
  def create
    @water_manager = WaterManager.new(water_manager_params)

    respond_to do |format|
      if @water_manager.save
        format.html { redirect_to @water_manager, notice: 'Water manager was successfully created.' }
        format.json { render :show, status: :created, location: @water_manager }
      else
        format.html { render :new }
        format.json { render json: @water_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_managers/1
  # PATCH/PUT /water_managers/1.json
  def update
    respond_to do |format|
      if @water_manager.update(water_manager_params)
        format.html { redirect_to @water_manager, notice: 'Water manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_manager }
      else
        format.html { render :edit }
        format.json { render json: @water_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_managers/1
  # DELETE /water_managers/1.json
  def destroy
    @water_manager.destroy
    respond_to do |format|
      format.html { redirect_to water_managers_url, notice: 'Water manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_manager
      @water_manager = WaterManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_manager_params
      params.require(:water_manager).permit(:state, :http_host)
    end
end
