class TravelMapsController < ApplicationController
  before_action :set_travel_map, only: [:show, :edit, :update, :destroy]

  # GET /travel_maps
  # GET /travel_maps.json
  def index
    @travel_maps = TravelMap.all
  end

  # GET /travel_maps/1
  # GET /travel_maps/1.json
  def show
  end

  # GET /travel_maps/new
  def new
    @travel_map = TravelMap.new
  end

  # GET /travel_maps/1/edit
  def edit
  end

  # POST /travel_maps
  # POST /travel_maps.json
  def create
    @travel_map = TravelMap.new(travel_map_params)
    @travel_map.profile = current_user.profile

    respond_to do |format|
      if @travel_map.save
        format.html { redirect_to @travel_map, notice: 'Travel map was successfully created.' }
        format.json { render :show, status: :created, location: @travel_map }
      else
        format.html { render :new }
        format.json { render json: @travel_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_maps/1
  # PATCH/PUT /travel_maps/1.json
  def update
    respond_to do |format|
      if @travel_map.update(travel_map_params)
        format.html { redirect_to @travel_map, notice: 'Travel map was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_map }
      else
        format.html { render :edit }
        format.json { render json: @travel_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_maps/1
  # DELETE /travel_maps/1.json
  def destroy
    @travel_map.destroy
    respond_to do |format|
      format.html { redirect_to travel_maps_url, notice: 'Travel map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_map
      @travel_map = TravelMap.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_map_params
      params.require(:travel_map).permit(:name, :description, :duration, :cost, :profile_id)
    end
end
