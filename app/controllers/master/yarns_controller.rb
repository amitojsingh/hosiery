class Master::YarnsController < ApplicationController
  before_action :set_master_yarn, only: [:show, :edit, :update, :destroy]

  # GET /master/yarns
  # GET /master/yarns.json
  def index
    @master_yarns = Master::Yarn.all
  end

  # GET /master/yarns/1
  # GET /master/yarns/1.json
  def show
  end

  # GET /master/yarns/new
  def new
    @master_yarn = Master::Yarn.new
  end

  # GET /master/yarns/1/edit
  def edit
  end

  # POST /master/yarns
  # POST /master/yarns.json
  def create
    @master_yarn = Master::Yarn.new(master_yarn_params)

    respond_to do |format|
      if @master_yarn.save
        format.html { redirect_to @master_yarn, notice: 'Yarn was successfully created.' }
        format.json { render :show, status: :created, location: @master_yarn }
      else
        format.html { render :new }
        format.json { render json: @master_yarn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/yarns/1
  # PATCH/PUT /master/yarns/1.json
  def update
    respond_to do |format|
      if @master_yarn.update(master_yarn_params)
        format.html { redirect_to @master_yarn, notice: 'Yarn was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_yarn }
      else
        format.html { render :edit }
        format.json { render json: @master_yarn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/yarns/1
  # DELETE /master/yarns/1.json
  def destroy
    @master_yarn.destroy
    respond_to do |format|
      format.html { redirect_to master_yarns_url, notice: 'Yarn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_yarn
      @master_yarn = Master::Yarn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_yarn_params
      params.require(:master_yarn).permit(:Date, :Color, :Lotnumber, :Quantity)
    end
end
