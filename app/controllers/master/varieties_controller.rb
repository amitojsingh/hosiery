class Master::VarietiesController < ApplicationController
  before_action :set_master_variety, only: [:show, :edit, :update, :destroy]

  # GET /master/varieties
  # GET /master/varieties.json
  def index
    @master_varieties = Master::Variety.all
  end

  # GET /master/varieties/1
  # GET /master/varieties/1.json
  def show
  end

  # GET /master/varieties/new
  def new
    @master_variety = Master::Variety.new
  end

  # GET /master/varieties/1/edit
  def edit
  end

  # POST /master/varieties
  # POST /master/varieties.json
  def create
    @master_variety = Master::Variety.new(master_variety_params)

    respond_to do |format|
      if @master_variety.save
        format.html { redirect_to @master_variety, notice: 'Variety was successfully created.' }
        format.json { render :show, status: :created, location: @master_variety }
      else
        format.html { render :new }
        format.json { render json: @master_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/varieties/1
  # PATCH/PUT /master/varieties/1.json
  def update
    respond_to do |format|
      if @master_variety.update(master_variety_params)
        format.html { redirect_to @master_variety, notice: 'Variety was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_variety }
      else
        format.html { render :edit }
        format.json { render json: @master_variety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/varieties/1
  # DELETE /master/varieties/1.json
  def destroy
    @master_variety.destroy
    respond_to do |format|
      format.html { redirect_to master_varieties_url, notice: 'Variety was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_variety
      @master_variety = Master::Variety.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_variety_params
      params.require(:master_variety).permit(:variety)
    end
end
