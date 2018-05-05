class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]
  before_action :serialnumber, only: [:create]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show; end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit; end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.number == '0'
        @order.errors.add(:quantitiy, 'overflow')
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      else
        if @order.save
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
          format.json { render :show, status: :created, location: @order }
        else
          format.html { render :new }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def colordata
    @color
    request.POST.each do |key, value|
      @color = value
    end
    @lotdetail= Master::Yarn.where('color like?', @color)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def serialnumber
    @exactquantity = params[:order]
    @detail = Design.where('Design_name Like ?', @exactquantity[:design])
    @detail.each do |value|
      @suit = value.Design_suittype
      @size = value.size
    end
    @record = Master::Typenumber.where('suit_type LIKE ? And Size Like?', @suit, @size).select('id', 'start_limit', 'end_limit')
    @record.each do |o|
      if o.start_limit < o.end_limit
        quant = @exactquantity[:quantity]
        @startnumber = o.start_limit + 1
        @endnumber = o.start_limit + quant.to_i
        o.start_limit = @endnumber
        @sid = o.id
        event = Master::Typenumber.find(@sid)
        event.update_attributes(start_limit: @endnumber)
        params[:order][:number] = "#{@startnumber}-#{@endnumber}"
      else
        params[:order][:number] = '0'
      end
    end
    end

  def set_order
    @order = Order.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit(:design, :quantity, :color, :lotnumber, :consumption, :number)
  end
end
