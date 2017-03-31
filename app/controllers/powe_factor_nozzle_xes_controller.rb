class PoweFactorNozzleXesController < ApplicationController
  before_action :set_powe_factor_nozzle_x, only: [:show, :edit, :update, :destroy]

  # GET /powe_factor_nozzle_xes
  # GET /powe_factor_nozzle_xes.json
  def index
    @powe_factor_nozzle_xes = PoweFactorNozzleX.all
  end

  # GET /powe_factor_nozzle_xes/1
  # GET /powe_factor_nozzle_xes/1.json
  def show
  end

  # GET /powe_factor_nozzle_xes/new
  def new
    @powe_factor_nozzle_x = PoweFactorNozzleX.new
  end

  # GET /powe_factor_nozzle_xes/1/edit
  def edit
  end

  # POST /powe_factor_nozzle_xes
  # POST /powe_factor_nozzle_xes.json
  def create
    @powe_factor_nozzle_x = PoweFactorNozzleX.new(powe_factor_nozzle_x_params)

    respond_to do |format|
      if @powe_factor_nozzle_x.save
        format.html { redirect_to @powe_factor_nozzle_x, notice: 'Powe factor nozzle x was successfully created.' }
        format.json { render :show, status: :created, location: @powe_factor_nozzle_x }
      else
        format.html { render :new }
        format.json { render json: @powe_factor_nozzle_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powe_factor_nozzle_xes/1
  # PATCH/PUT /powe_factor_nozzle_xes/1.json
  def update
    respond_to do |format|
      if @powe_factor_nozzle_x.update(powe_factor_nozzle_x_params)
        format.html { redirect_to @powe_factor_nozzle_x, notice: 'Powe factor nozzle x was successfully updated.' }
        format.json { render :show, status: :ok, location: @powe_factor_nozzle_x }
      else
        format.html { render :edit }
        format.json { render json: @powe_factor_nozzle_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powe_factor_nozzle_xes/1
  # DELETE /powe_factor_nozzle_xes/1.json
  def destroy
    @powe_factor_nozzle_x.destroy
    respond_to do |format|
      format.html { redirect_to powe_factor_nozzle_xes_url, notice: 'Powe factor nozzle x was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powe_factor_nozzle_x
      @powe_factor_nozzle_x = PoweFactorNozzleX.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powe_factor_nozzle_x_params
      params.require(:powe_factor_nozzle_x).permit(:number, :mide, :mode_proof, :lost_mv)
    end
end
