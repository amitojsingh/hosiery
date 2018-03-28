class SizemastersController < ApplicationController
  before_action :set_sizemaster, only: [:show, :edit, :update, :destroy]

  # GET /sizemasters
  # GET /sizemasters.json
  def index
    @sizemasters = Sizemaster.all
  end

  # GET /sizemasters/1
  # GET /sizemasters/1.json
  def show
  end

  # GET /sizemasters/new
  def new
    @sizemaster = Sizemaster.new
  end

  # GET /sizemasters/1/edit
  def edit
  end

  # POST /sizemasters
  # POST /sizemasters.json
  def create
    @sizemaster = Sizemaster.new(sizemaster_params)

    respond_to do |format|
      if @sizemaster.save
        format.html { redirect_to @sizemaster, notice: 'Sizemaster was successfully created.' }
        format.json { render :show, status: :created, location: @sizemaster }
      else
        format.html { render :new }
        format.json { render json: @sizemaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sizemasters/1
  # PATCH/PUT /sizemasters/1.json
  def update
    respond_to do |format|
      if @sizemaster.update(sizemaster_params)
        format.html { redirect_to @sizemaster, notice: 'Sizemaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @sizemaster }
      else
        format.html { render :edit }
        format.json { render json: @sizemaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sizemasters/1
  # DELETE /sizemasters/1.json
  def destroy
    @sizemaster.destroy
    respond_to do |format|
      format.html { redirect_to sizemasters_url, notice: 'Sizemaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sizemaster
      @sizemaster = Sizemaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sizemaster_params
      params.require(:sizemaster).permit(:size)
    end
end
