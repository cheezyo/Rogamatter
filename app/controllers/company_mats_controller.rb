  class CompanyMatsController < ApplicationController
  before_action :set_company_mat, only: [:show, :edit, :update, :destroy]

  # GET /company_mats
  # GET /company_mats.json
  def index
    @company_mats = CompanyMat.all
  end

  # GET /company_mats/1
  # GET /company_mats/1.json
  def show
  end

  # GET /company_mats/new
  def new
    @company_mat = CompanyMat.new

    if params[:company_id].present?
      @company_mat.company_id = params[:company_id].to_i
    end

    @company_mat.delivery_price = 0
    @company_mat.contract_price = 0
    @company_mat.amount = 1
  end

  # GET /company_mats/1/edit
  def edit
  end

  # POST /company_mats
  # POST /company_mats.json
  def create
    @company_mat = CompanyMat.new(company_mat_params)
    @company_mat.change_day = @company_mat.start_date.strftime("%A")
    
    respond_to do |format|
      if @company_mat.save
        format.html { redirect_to @company_mat.company, notice: 'Company mat was successfully created.' }
        format.json { render :show, status: :created, location: @company_mat }
      else
        format.html { render :new }
        format.json { render json: @company_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_mats/1
  # PATCH/PUT /company_mats/1.json
  def update
    respond_to do |format|
      if @company_mat.update(company_mat_params)
        format.html { redirect_to @company_mat.company, notice: 'Company mat was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_mat }
      else
        format.html { render :edit }
        format.json { render json: @company_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_mats/1
  # DELETE /company_mats/1.json
  def destroy
    deliveries = Delivery.where(klass: @company_mat.class.name, klass_id: @company_mat.id ).each do |d|
      d.destroy
    end
    @company_mat.destroy
    respond_to do |format|
      format.html { redirect_to company_mats_url, notice: 'Company mat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_mat
      @company_mat = CompanyMat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_mat_params
      params.require(:company_mat).permit(:change, :change_day, :start_date, :end_date, :company_id, :mat_id, :amount, :delivery_price, :contract_price, :location)
    end
end
