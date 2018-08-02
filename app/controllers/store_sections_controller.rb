class StoreSectionsController < ApplicationController
  before_action :set_store_section, only: [:show, :edit, :update, :destroy]

  # GET /store_sections
  # GET /store_sections.json
  def index
    @store_sections = StoreSection.all
  end

  # GET /store_sections/1
  # GET /store_sections/1.json
  def show
  end

  # GET /store_sections/new
  def new
    @store_section = StoreSection.new
  end

  # GET /store_sections/1/edit
  def edit
  end

  # POST /store_sections
  # POST /store_sections.json
  def create
    @store_section = StoreSection.new(store_section_params)

    respond_to do |format|
      if @store_section.save
        format.html { redirect_to @store_section, notice: 'Store section was successfully created.' }
        format.json { render :show, status: :created, location: @store_section }
      else
        format.html { render :new }
        format.json { render json: @store_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_sections/1
  # PATCH/PUT /store_sections/1.json
  def update
    respond_to do |format|
      if @store_section.update(store_section_params)
        format.html { redirect_to @store_section, notice: 'Store section was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_section }
      else
        format.html { render :edit }
        format.json { render json: @store_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_sections/1
  # DELETE /store_sections/1.json
  def destroy
    @store_section.destroy
    respond_to do |format|
      format.html { redirect_to store_sections_url, notice: 'Store section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_section
      @store_section = StoreSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_section_params
      params.require(:store_section).permit(:section, :store_map_id)
    end
end
