class Manufacturing::KnittingsController < ApplicationController
  before_action :set_manufacturing_knitting, only: %i[show edit update destroy]
  before_action :set_params, only: [:create]

  # GET /manufacturing/knittings
  # GET /manufacturing/knittings.json
  def index
    @manufacturing_knittings = Manufacturing::Knitting.all
  end

  # GET /manufacturing/knittings/1
  # GET /manufacturing/knittings/1.json
  def show; end

  # GET /manufacturing/knittings/new
  def new
    @manufacturing_knitting = Manufacturing::Knitting.new
  end

  # GET /manufacturing/knittings/1/edit
  def edit; end

  # POST /manufacturing/knittings
  # POST /manufacturing/knittings.json
  def create
#    @manufacturing_knitting = Manufacturing::Knitting.create(@myarr)
    respond_to do |format|
      if Manufacturing::Knitting.create(@myarr)
        format.html { redirect_to manufacturing_knittings_path, notice: 'Knitting was successfully created.' }
        format.json { render :show, status: :created, location: @manufacturing_knitting }
      else
        format.html { render :new }
        format.json { render json: @manufacturing_knitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manufacturing/knittings/1
  # PATCH/PUT /manufacturing/knittings/1.json
  def update
    respond_to do |format|
      if @manufacturing_knitting.update(manufacturing_knitting_param)
        format.html { redirect_to @manufacturing_knitting, notice: 'Knitting was successfully updated.' }
        format.json { render :show, status: :ok, location: @manufacturing_knitting }
      else
        format.html { render :edit }
        format.json { render json: @manufacturing_knitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacturing/knittings/1
  # DELETE /manufacturing/knittings/1.json
  def destroy
    @manufacturing_knitting.destroy
    respond_to do |format|
      format.html { redirect_to manufacturing_knittings_url, notice: 'Knitting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def orderfind
    request.POST.each do |_key, value|
      @orderid = value
    end
    @orderdetail = Order.find(@orderid)
    @designdetail = Design.where('Design_name Like ?', @orderdetail[:design])
    respond_to do |format|
      format.js
    end
    @designdetail.each do |p|
      @parts = p.parts
    end
    @serial = @orderdetail[:number].split('-')
    @parsed = JSON.parse(@parts)
    @parsed = @parsed.delete_if(&:empty?)
    end

  private

  def set_params
    @myarr = []
    params[:worker].each do |part, worker|
      batch = {}
      params[:manufacturing_knitting].each do |key, value|
        batch[key] = value
      end
      batch[:parts] = part
      batch[:worker] = worker
      @myarr.push(batch)
    end
    @myarr.each do |value|
      puts "batch=#{value}"
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_manufacturing_knitting
    @manufacturing_knitting = Manufacturing::Knitting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def manufacturing_knitting_params
    params.require(:manufacturing_knitting).permit(:ordernumber, :parts, :quantity, :worker, :serial, :status)
  end
end
