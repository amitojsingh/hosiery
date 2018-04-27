class Master::PartsController < ApplicationController
  before_action :set_master_part, only: [:show, :edit, :update, :destroy]

  # GET /master/parts
  # GET /master/parts.json
  def index
    @master_parts = Master::Part.all
  end

  # GET /master/parts/1
  # GET /master/parts/1.json
  def show
  end

  # GET /master/parts/new
  def new
    @master_part = Master::Part.new
  end

  # GET /master/parts/1/edit
  def edit
  end

  # POST /master/parts
  # POST /master/parts.json
  def create
    @master_part = Master::Part.new(master_part_params)

    respond_to do |format|
      if @master_part.save
        format.html { redirect_to @master_part, notice: 'Part was successfully created.' }
        format.json { render :show, status: :created, location: @master_part }
      else
        format.html { render :new }
        format.json { render json: @master_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/parts/1
  # PATCH/PUT /master/parts/1.json
  def update
    respond_to do |format|
      if @master_part.update(master_part_params)
        format.html { redirect_to @master_part, notice: 'Part was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_part }
      else
        format.html { render :edit }
        format.json { render json: @master_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/parts/1
  # DELETE /master/parts/1.json
  def destroy
    @master_part.destroy
    respond_to do |format|
      format.html { redirect_to master_parts_url, notice: 'Part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_part
      @master_part = Master::Part.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_part_params
      params.require(:master_part).permit(:suitpart)
    end
end
