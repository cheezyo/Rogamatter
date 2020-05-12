class CompanyMopsController < ApplicationController
  before_action :set_company_mop, only: [:show, :edit, :update, :destroy]

  # GET /company_mops
  # GET /company_mops.json
  def index
    @company_mops = CompanyMop.all
  end

  # GET /company_mops/1
  # GET /company_mops/1.json
  def show
  end

  # GET /company_mops/new
  def new
    @company_mop = CompanyMop.new

     @company_mop.delivery_price = 0
    @company_mop.contract_price = 0
    @company_mop.amount = 1
  end

  # GET /company_mops/1/edit
  def edit
  end

  # POST /company_mops
  # POST /company_mops.json
  def create
    @company_mop = CompanyMop.new(company_mop_params)
    @company_mop.change_day = @company_mop.start_date.strftime("%A")
    respond_to do |format|
      if @company_mop.save

        format.html { redirect_to @company_mop, notice: 'Company mop was successfully created.' }
        format.json { render :show, status: :created, location: @company_mop }
      else
        format.html { render :new }
        format.json { render json: @company_mop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_mops/1
  # PATCH/PUT /company_mops/1.json
  def update
    respond_to do |format|
      if @company_mop.update(company_mop_params)
        format.html { redirect_to @company_mop, notice: 'Company mop was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_mop }
      else
        format.html { render :edit }
        format.json { render json: @company_mop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_mops/1
  # DELETE /company_mops/1.json
  def destroy
    @company_mop.destroy
    respond_to do |format|
      format.html { redirect_to company_mops_url, notice: 'Company mop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_mop
      @company_mop = CompanyMop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_mop_params
      params.require(:company_mop).permit(:change, :change_day, :start_date, :end_date, :company_id, :mop_id, :amount, :delivery_price, :contract_price, :location)
    end
end
