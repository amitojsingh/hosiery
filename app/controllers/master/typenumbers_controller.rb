class Master::TypenumbersController < ApplicationController
  before_action :set_master_typenumber, only: %i[show edit update destroy]

  # GET /master/typenumbers
  # GET /master/typenumbers.json
  def index
    @master_typenumbers = Master::Typenumber.all
  end

  # GET /master/typenumbers/1
  # GET /master/typenumbers/1.json
  def show; end

  # GET /master/typenumbers/new
  def new
    @master_typenumber = Master::Typenumber.new
  end

  # GET /master/typenumbers/1/edit
  def edit; end

  # POST /master/typenumbers
  # POST /master/typenumbers.json
  def create
    @this_typenumber = Master::Typenumber.new(master_typenumber_params)
    @master_typenumbers = Master::Typenumber.all
    @master_typenumbers.each do |m|
      puts "start limit #{m.start_limit}"
      if @this_typenumber.start_limit.between?(m.start_limit, m.end_limit) || (@this_typenumber.end_limit <= @this_typenumber.start_limit) || @this_typenumber.end_limit.between?(m.start_limit, m.end_limit)
        @bool = 1
      end
    end

    @master_typenumber = @this_typenumber
    respond_to do |format|
      if @bool != 1
        if @master_typenumber.save
          format.html { redirect_to @master_typenumber, notice: 'Typenumber was successfully created.' }
          format.json { render :show, status: :created, location: @master_typenumber }
        else
          format.html { render :new }
          format.json { render json: @master_typenumber.errors, status: :unprocessable_entity }
        end
      else
        @master_typenumber.errors.add(:start_limit, 'is incorrect or already taken')
        @master_typenumber.errors.add(:end_limit, 'is incorrect')
        format.html { render :new }
        format.json { render json: @master_typenumber.errors, status: :unprocessable_entity }
        end
    end
  end

  # PATCH/PUT /master/typenumbers/1
  # PATCH/PUT /master/typenumbers/1.json
  def update
    respond_to do |format|
      if @master_typenumber.update(master_typenumber_params)
        format.html { redirect_to @master_typenumber, notice: 'Typenumber was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_typenumber }
      else
        format.html { render :edit }
        format.json { render json: @master_typenumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/typenumbers/1
  # DELETE /master/typenumbers/1.json
  def destroy
    @master_typenumber.destroy
    respond_to do |format|
      format.html { redirect_to master_typenumbers_url, notice: 'Typenumber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_master_typenumber
    @master_typenumber = Master::Typenumber.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def master_typenumber_params
    params.require(:master_typenumber).permit(:suit_type, :size, :start_limit, :end_limit)
  end
end
