class MopsController < ApplicationController
  before_action :set_mop, only: [:show, :edit, :update, :destroy]

  # GET /mops
  # GET /mops.json
  def index
    @mops = Mop.all
  end

  # GET /mops/1
  # GET /mops/1.json
  def show
  end

  # GET /mops/new
  def new
    @mop = Mop.new
  end

  # GET /mops/1/edit
  def edit
  end

  # POST /mops
  # POST /mops.json
  def create
    @mop = Mop.new(mop_params)

    respond_to do |format|
      if @mop.save
        format.html { redirect_to @mop, notice: 'Mop was successfully created.' }
        format.json { render :show, status: :created, location: @mop }
      else
        format.html { render :new }
        format.json { render json: @mop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mops/1
  # PATCH/PUT /mops/1.json
  def update
    respond_to do |format|
      if @mop.update(mop_params)
        format.html { redirect_to @mop, notice: 'Mop was successfully updated.' }
        format.json { render :show, status: :ok, location: @mop }
      else
        format.html { render :edit }
        format.json { render json: @mop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mops/1
  # DELETE /mops/1.json
  def destroy
    @mop.destroy
    respond_to do |format|
      format.html { redirect_to mops_url, notice: 'Mop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mop
      @mop = Mop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mop_params
      params.require(:mop).permit(:mop_type, :size, :inventory)
    end
end
