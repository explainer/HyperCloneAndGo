class ValvesController < ApplicationController
  before_action :set_valf, only: [:show, :edit, :update, :destroy]

  # GET /valves
  # GET /valves.json
  def index
    @valves = Valve.all
  end

  # GET /valves/1
  # GET /valves/1.json
  def show
  end

  # GET /valves/new
  def new
    @valf = Valve.new
  end

  # GET /valves/1/edit
  def edit
  end

  # POST /valves
  # POST /valves.json
  def create
    @valf = Valve.new(valf_params)

    respond_to do |format|
      if @valf.save
        format.html { redirect_to @valf, notice: 'Valve was successfully created.' }
        format.json { render :show, status: :created, location: @valf }
      else
        format.html { render :new }
        format.json { render json: @valf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valves/1
  # PATCH/PUT /valves/1.json
  def update
    respond_to do |format|
      if @valf.update(valf_params)
        format.html { redirect_to @valf, notice: 'Valve was successfully updated.' }
        format.json { render :show, status: :ok, location: @valf }
      else
        format.html { render :edit }
        format.json { render json: @valf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valves/1
  # DELETE /valves/1.json
  def destroy
    @valf.destroy
    respond_to do |format|
      format.html { redirect_to valves_url, notice: 'Valve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valf
      @valf = Valve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valf_params
      params.require(:valf).permit(:name, :gpio_pin, :cpu2bb_color, :bb_pin, :bb2relay_color, :relay_module, :relay_index, :relay2valve_color, :cmd, :base_time)
    end
end
