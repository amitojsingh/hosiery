class Master::ColorsController < ApplicationController
  before_action :set_master_color, only: [:show, :edit, :update, :destroy]

  # GET /master/colors
  # GET /master/colors.json
  def index
    @master_colors = Master::Color.all
  end

  # GET /master/colors/1
  # GET /master/colors/1.json
  def show
  end

  # GET /master/colors/new
  def new
    @master_color = Master::Color.new
  end

  # GET /master/colors/1/edit
  def edit
  end

  # POST /master/colors
  # POST /master/colors.json
  def create
    @master_color = Master::Color.new(master_color_params)

    respond_to do |format|
      if @master_color.save
        format.html { redirect_to @master_color, notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @master_color }
      else
        format.html { render :new }
        format.json { render json: @master_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/colors/1
  # PATCH/PUT /master/colors/1.json
  def update
    respond_to do |format|
      if @master_color.update(master_color_params)
        format.html { redirect_to @master_color, notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_color }
      else
        format.html { render :edit }
        format.json { render json: @master_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/colors/1
  # DELETE /master/colors/1.json
  def destroy
    @master_color.destroy
    respond_to do |format|
      format.html { redirect_to master_colors_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_color
      @master_color = Master::Color.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_color_params
      params.require(:master_color).permit(:colorname)
    end
end
