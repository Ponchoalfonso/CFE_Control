class PowerFactorSwitchesController < ApplicationController
  before_action :set_power_factor_switch, only: [:show, :edit, :update, :destroy]

  # GET /power_factor_switches
  # GET /power_factor_switches.json
  def index
    @power_factor_switches = PowerFactorSwitch.all
  end

  # GET /power_factor_switches/1
  # GET /power_factor_switches/1.json
  def show
  end

  # GET /power_factor_switches/new
  def new
    @power_factor_switch = PowerFactorSwitch.new
  end

  # GET /power_factor_switches/1/edit
  def edit
  end

  # POST /power_factor_switches
  # POST /power_factor_switches.json
  def create
    @power_factor_switch = PowerFactorSwitch.new(power_factor_switch_params)

    respond_to do |format|
      if @power_factor_switch.save
        format.html { redirect_to @power_factor_switch, notice: 'Power factor switch was successfully created.' }
        format.json { render :show, status: :created, location: @power_factor_switch }
      else
        format.html { render :new }
        format.json { render json: @power_factor_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_factor_switches/1
  # PATCH/PUT /power_factor_switches/1.json
  def update
    respond_to do |format|
      if @power_factor_switch.update(power_factor_switch_params)
        format.html { redirect_to @power_factor_switch, notice: 'Power factor switch was successfully updated.' }
        format.json { render :show, status: :ok, location: @power_factor_switch }
      else
        format.html { render :edit }
        format.json { render json: @power_factor_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_factor_switches/1
  # DELETE /power_factor_switches/1.json
  def destroy
    @power_factor_switch.destroy
    respond_to do |format|
      format.html { redirect_to power_factor_switches_url, notice: 'Power factor switch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_factor_switch
      @power_factor_switch = PowerFactorSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_factor_switch_params
      params.require(:power_factor_switch).permit(:phase, :proof, :position_switches, :tat, :tbt, :selector, :mv, :fp_current)
    end
end
