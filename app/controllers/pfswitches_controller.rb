class PfswitchesController < ApplicationController
  before_action :set_pfswitch, only: [:show, :edit, :update, :destroy]

  # GET /pfswitches
  # GET /pfswitches.json
  def index
    @pfswitches = Pfswitch.all
  end

  # GET /pfswitches/1
  # GET /pfswitches/1.json
  def show
  end

  # GET /pfswitches/new
  def new
    @pfswitch = Pfswitch.new
  end

  # GET /pfswitches/1/edit
  def edit
  end

  # POST /pfswitches
  # POST /pfswitches.json
  def create
    @pfswitch = Pfswitch.new(pfswitch_params)

    respond_to do |format|
      if @pfswitch.save
        format.html { redirect_to @pfswitch, notice: 'Pfswitch was successfully created.' }
        format.json { render :show, status: :created, location: @pfswitch }
      else
        format.html { render :new }
        format.json { render json: @pfswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pfswitches/1
  # PATCH/PUT /pfswitches/1.json
  def update
    respond_to do |format|
      if @pfswitch.update(pfswitch_params)
        format.html { redirect_to @pfswitch, notice: 'Pfswitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @pfswitch }
      else
        format.html { render :edit }
        format.json { render json: @pfswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pfswitches/1
  # DELETE /pfswitches/1.json
  def destroy
    @pfswitch.destroy
    respond_to do |format|
      format.html { redirect_to pfswitches_url, notice: 'Pfswitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pfswitch
      @pfswitch = Pfswitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pfswitch_params
      params.require(:pfswitch).permit(:phase, :proof, :switch_position, :tat, :tbt, :selector_switch, :mv, :fp_current, :t_number)
    end
end
