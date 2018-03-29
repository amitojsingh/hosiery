class Master::SizesController < ApplicationController
  before_action :set_master_size, only: [:show, :edit, :update, :destroy]

  # GET /master/sizes
  # GET /master/sizes.json
  def index
    @master_sizes = Master::Size.all
  end

  # GET /master/sizes/1
  # GET /master/sizes/1.json
  def show
  end

  # GET /master/sizes/new
  def new
    @master_size = Master::Size.new
  end

  # GET /master/sizes/1/edit
  def edit
  end

  # POST /master/sizes
  # POST /master/sizes.json
  def create
    @master_size = Master::Size.new(master_size_params)

    respond_to do |format|
      if @master_size.save
        format.html { redirect_to @master_size, notice: 'Size was successfully created.' }
        format.json { render :show, status: :created, location: @master_size }
      else
        format.html { render :new }
        format.json { render json: @master_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/sizes/1
  # PATCH/PUT /master/sizes/1.json
  def update
    respond_to do |format|
      if @master_size.update(master_size_params)
        format.html { redirect_to @master_size, notice: 'Size was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_size }
      else
        format.html { render :edit }
        format.json { render json: @master_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/sizes/1
  # DELETE /master/sizes/1.json
  def destroy
    puts "this is working"
    @master_size.destroy
    respond_to do |format|
      format.html { redirect_to master_sizes_url, notice: 'Size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_size
      @master_size = Master::Size.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_size_params
      params.require(:master_size).permit(:size)
    end
end
