class Master::EmployesController < ApplicationController
  before_action :set_master_employe, only: [:show, :edit, :update, :destroy]

  # GET /master/employes
  # GET /master/employes.json
  def index
    @master_employes = Master::Employe.all
  end

  # GET /master/employes/1
  # GET /master/employes/1.json
  def show
  end

  # GET /master/employes/new
  def new
    @master_employe = Master::Employe.new
  end

  # GET /master/employes/1/edit
  def edit
  end

  # POST /master/employes
  # POST /master/employes.json
  def create
    @master_employe = Master::Employe.new(master_employe_params)

    respond_to do |format|
      if @master_employe.save
        format.html { redirect_to @master_employe, notice: 'Employe was successfully created.' }
        format.json { render :show, status: :created, location: @master_employe }
      else
        format.html { render :new }
        format.json { render json: @master_employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/employes/1
  # PATCH/PUT /master/employes/1.json
  def update
    respond_to do |format|
      if @master_employe.update(master_employe_params)
        format.html { redirect_to @master_employe, notice: 'Employe was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_employe }
      else
        format.html { render :edit }
        format.json { render json: @master_employe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/employes/1
  # DELETE /master/employes/1.json
  def destroy
    @master_employe.destroy
    respond_to do |format|
      format.html { redirect_to master_employes_url, notice: 'Employe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_employe
      @master_employe = Master::Employe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_employe_params
      params.require(:master_employe).permit(:name, :mobile, :address)
    end
end
