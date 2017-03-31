class PoweFactorNozzleHsController < ApplicationController
  before_action :set_powe_factor_nozzle_h, only: [:show, :edit, :update, :destroy]

  # GET /powe_factor_nozzle_hs
  # GET /powe_factor_nozzle_hs.json
  def index
    @powe_factor_nozzle_hs = PoweFactorNozzleH.all
  end

  # GET /powe_factor_nozzle_hs/1
  # GET /powe_factor_nozzle_hs/1.json
  def show
  end

  # GET /powe_factor_nozzle_hs/new
  def new
    @powe_factor_nozzle_h = PoweFactorNozzleH.new
  end

  # GET /powe_factor_nozzle_hs/1/edit
  def edit
  end

  # POST /powe_factor_nozzle_hs
  # POST /powe_factor_nozzle_hs.json
  def create
    @powe_factor_nozzle_h = PoweFactorNozzleH.new(powe_factor_nozzle_h_params)

    respond_to do |format|
      if @powe_factor_nozzle_h.save
        format.html { redirect_to @powe_factor_nozzle_h, notice: 'Powe factor nozzle h was successfully created.' }
        format.json { render :show, status: :created, location: @powe_factor_nozzle_h }
      else
        format.html { render :new }
        format.json { render json: @powe_factor_nozzle_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powe_factor_nozzle_hs/1
  # PATCH/PUT /powe_factor_nozzle_hs/1.json
  def update
    respond_to do |format|
      if @powe_factor_nozzle_h.update(powe_factor_nozzle_h_params)
        format.html { redirect_to @powe_factor_nozzle_h, notice: 'Powe factor nozzle h was successfully updated.' }
        format.json { render :show, status: :ok, location: @powe_factor_nozzle_h }
      else
        format.html { render :edit }
        format.json { render json: @powe_factor_nozzle_h.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powe_factor_nozzle_hs/1
  # DELETE /powe_factor_nozzle_hs/1.json
  def destroy
    @powe_factor_nozzle_h.destroy
    respond_to do |format|
      format.html { redirect_to powe_factor_nozzle_hs_url, notice: 'Powe factor nozzle h was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powe_factor_nozzle_h
      @powe_factor_nozzle_h = PoweFactorNozzleH.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powe_factor_nozzle_h_params
      params.require(:powe_factor_nozzle_h).permit(:number, :mide, :mode_proof, :lost_mv)
    end
end
