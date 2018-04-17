class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :serialnumber, only:[:create]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @orderquantities=@order.orderquantities.build
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def serialnumber
      @subhash=params[:order][:orderquantities_attributes]
      @subhash.each do |key,array|
        @record=Master::Typenumber.where("suit_type LIKE ? And Size Like?", array[:piece],array[:size]).select('id','start_limit','end_limit')
        @record.each do |o|
          if o.start_limit<o.end_limit
            quant = array[:quantity]
              @startnumber= o.start_limit+1
              @endnumber= o.start_limit + quant.to_i
              o.start_limit=@endnumber
              @sid=o.id
          end
          event=Master::Typenumber.find(@sid)
          event.update_attributes(start_limit: @endnumber)
        end
        array[:number]= "#{@startnumber}-#{@endnumber}"
        end
      end
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:design, :quantity,orderquantities_attributes: Orderquantity.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
