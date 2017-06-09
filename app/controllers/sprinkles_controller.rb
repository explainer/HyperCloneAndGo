class SprinklesController < ApplicationController
  before_action :set_sprinkle, only: [:show, :edit, :update, :destroy]

  # GET /sprinkles
  # GET /sprinkles.json
  def index
    @sprinkles = Sprinkle.all
  end

  # GET /sprinkles/1
  # GET /sprinkles/1.json
  def show
  end

  # GET /sprinkles/new
  def new
    @sprinkle = Sprinkle.new
  end

  # GET /sprinkles/1/edit
  def edit
  end

  # POST /sprinkles
  # POST /sprinkles.json
  def create
    @sprinkle = Sprinkle.new(sprinkle_params)

    respond_to do |format|
      if @sprinkle.save
        format.html { redirect_to @sprinkle, notice: 'Sprinkle was successfully created.' }
        format.json { render :show, status: :created, location: @sprinkle }
      else
        format.html { render :new }
        format.json { render json: @sprinkle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprinkles/1
  # PATCH/PUT /sprinkles/1.json
  def update
    respond_to do |format|
      if @sprinkle.update(sprinkle_params)
        format.html { redirect_to @sprinkle, notice: 'Sprinkle was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprinkle }
      else
        format.html { render :edit }
        format.json { render json: @sprinkle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprinkles/1
  # DELETE /sprinkles/1.json
  def destroy
    @sprinkle.destroy
    respond_to do |format|
      format.html { redirect_to sprinkles_url, notice: 'Sprinkle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprinkle
      @sprinkle = Sprinkle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprinkle_params
      params.require(:sprinkle).permit(:next_start_time, :base_start_time, :time_input, :duration, :valve_id)
    end
end
