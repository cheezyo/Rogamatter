class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]

  # GET /deliveries
  # GET /deliveries.json
  def index
    @deliveries = Delivery.all
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
   @comment = Comment.new
  end

  # GET /deliveries/new
  def new
    @delivery = Delivery.new
  end

  # GET /deliveries/1/edit
  def edit
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = Delivery.new(delivery_params)

    respond_to do |format|
      if @delivery.save
        is_delivered?
        format.html { redirect_to "/pages/dashboard", notice: 'Delivery was successfully created.' }
        format.json { render :show, status: :created, location: @delivery }
      else
        format.html { render :new }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveries/1
  # PATCH/PUT /deliveries/1.json
  def update
    respond_to do |format|
      if @delivery.update(delivery_params)
        is_delivered?

        format.html { redirect_to "/pages/one_day", notice: 'Delivery was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery }
      else
        format.html { render :edit }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery.destroy
    respond_to do |format|
      format.html { redirect_to deliveries_url, notice: 'Delivery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def deliver_all
    c = Company.find(params[:company_id])
    date = DateTime.parse(params[:date])
    d = Delivery.where(company_id: params[:company_id].to_i).where(delivery: date)
    d.update_all(delivered: true, delivered_date: DateTime.now)


    redirect_to request.referrer

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_params
      params.require(:delivery).permit(:klass, :klass_id, :pack_date, :delivery, :delivered_date, :change_amount, :notify, :commet_id, :delivered, :company_id)
    end

    def is_delivered?
      if @delivery.delivered?
        @delivery.delivered_date = Time.now
      else
        @delivery.delivered_date = nil
    end
    @delivery.save!
  end

end
