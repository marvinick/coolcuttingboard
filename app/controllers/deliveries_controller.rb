class DeliveriesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]

  def index
    @deliveries = Delivery.all
  end

  def show
  end

  def new
    if @cart.line_items.empty?
      redirect_to listing_index_url, notice: "Your cart is empty"
      return
    end

    @delivery = Delivery.new
  end

  def edit
  end

  def create
    @delivery = Delivery.new(delivery_params)

    if @delivery.save
      AppMailer.order_confirmation(@delivery).deliver
      redirect_to listing_index_url
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to deliveries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_params
      params.require(:delivery).permit(:name, :address, :email)
    end
end
