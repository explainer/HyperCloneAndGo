class SprinkleEventsController < ApplicationController
  before_action :set_sprinkle_event, only: [:show, :edit, :update, :destroy]

  # GET /sprinkle_events
  # GET /sprinkle_events.json
  def index
    @sprinkle_events = SprinkleEvent.all
  end

  # GET /sprinkle_events/1
  # GET /sprinkle_events/1.json
  def show
  end

  # GET /sprinkle_events/new
  def new
    @sprinkle_event = SprinkleEvent.new
  end

  # GET /sprinkle_events/1/edit
  def edit
  end

  # POST /sprinkle_events
  # POST /sprinkle_events.json
  def create
    @sprinkle_event = SprinkleEvent.new(sprinkle_event_params)

    respond_to do |format|
      if @sprinkle_event.save
        format.html { redirect_to @sprinkle_event, notice: 'Sprinkle event was successfully created.' }
        format.json { render :show, status: :created, location: @sprinkle_event }
      else
        format.html { render :new }
        format.json { render json: @sprinkle_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprinkle_events/1
  # PATCH/PUT /sprinkle_events/1.json
  def update
    respond_to do |format|
      result = @sprinkle_event.update(sprinkle_event_params)
      # add valve handle code here
      if result
        format.html { redirect_to @sprinkle_event, notice: 'Sprinkle event was successfully updated.' }
        @sprinkle_event.manipulate(sprinkle_event_params)
        format.json { render :show, status: :ok, location: @sprinkle_event }
      else
        format.html { render :edit }
        format.json { render json: @sprinkle_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprinkle_events/1
  # DELETE /sprinkle_events/1.json
  def destroy
    @sprinkle_event.destroy
    respond_to do |format|
      format.html { redirect_to sprinkle_events_url, notice: 'Sprinkle event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprinkle_event
      @sprinkle_event = SprinkleEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprinkle_event_params
      params.require(:sprinkle_event).permit(:sprinkle_id, :valve_id, :history_id, :valve_cmd)
    end
end
