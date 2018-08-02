class StoreMapsController < ApplicationController
  before_action :set_store_map, only: [:show, :edit, :update, :destroy]

  # GET /store_maps
  # GET /store_maps.json
  def index
    @store_maps = StoreMap.all
  end

  # GET /store_maps/1
  # GET /store_maps/1.json
  def show
  end

  # GET /store_maps/new
  def new
    @store_map = StoreMap.new
  end

  # GET /store_maps/1/edit
  def edit
  end

  # POST /store_maps
  # POST /store_maps.json
  def create
    @store_map = StoreMap.new(store_map_params)

    respond_to do |format|
      if @store_map.save
        format.html { redirect_to @store_map, notice: 'Store map was successfully created.' }
        format.json { render :show, status: :created, location: @store_map }
      else
        format.html { render :new }
        format.json { render json: @store_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_maps/1
  # PATCH/PUT /store_maps/1.json
  def update
    respond_to do |format|
      if @store_map.update(store_map_params)
        format.html { redirect_to @store_map, notice: 'Store map was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_map }
      else
        format.html { render :edit }
        format.json { render json: @store_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_maps/1
  # DELETE /store_maps/1.json
  def destroy
    @store_map.destroy
    respond_to do |format|
      format.html { redirect_to store_maps_url, notice: 'Store map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_map
      @store_map = StoreMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_map_params
      params.require(:store_map).permit(:aisl, :aisle_number)
    end
end
