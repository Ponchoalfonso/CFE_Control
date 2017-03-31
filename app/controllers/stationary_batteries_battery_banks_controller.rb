class StationaryBatteriesBatteryBanksController < ApplicationController
  before_action :set_stationary_batteries_battery_bank, only: [:show, :edit, :update, :destroy]

  # GET /stationary_batteries_battery_banks
  # GET /stationary_batteries_battery_banks.json
  def index
    @stationary_batteries_battery_banks = StationaryBatteriesBatteryBank.all
  end

  # GET /stationary_batteries_battery_banks/1
  # GET /stationary_batteries_battery_banks/1.json
  def show
  end

  # GET /stationary_batteries_battery_banks/new
  def new
    @stationary_batteries_battery_bank = StationaryBatteriesBatteryBank.new
  end

  # GET /stationary_batteries_battery_banks/1/edit
  def edit
  end

  # POST /stationary_batteries_battery_banks
  # POST /stationary_batteries_battery_banks.json
  def create
    @stationary_batteries_battery_bank = StationaryBatteriesBatteryBank.new(stationary_batteries_battery_bank_params)

    respond_to do |format|
      if @stationary_batteries_battery_bank.save
        format.html { redirect_to @stationary_batteries_battery_bank, notice: 'Stationary batteries battery bank was successfully created.' }
        format.json { render :show, status: :created, location: @stationary_batteries_battery_bank }
      else
        format.html { render :new }
        format.json { render json: @stationary_batteries_battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stationary_batteries_battery_banks/1
  # PATCH/PUT /stationary_batteries_battery_banks/1.json
  def update
    respond_to do |format|
      if @stationary_batteries_battery_bank.update(stationary_batteries_battery_bank_params)
        format.html { redirect_to @stationary_batteries_battery_bank, notice: 'Stationary batteries battery bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @stationary_batteries_battery_bank }
      else
        format.html { render :edit }
        format.json { render json: @stationary_batteries_battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stationary_batteries_battery_banks/1
  # DELETE /stationary_batteries_battery_banks/1.json
  def destroy
    @stationary_batteries_battery_bank.destroy
    respond_to do |format|
      format.html { redirect_to stationary_batteries_battery_banks_url, notice: 'Stationary batteries battery bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stationary_batteries_battery_bank
      @stationary_batteries_battery_bank = StationaryBatteriesBatteryBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stationary_batteries_battery_bank_params
      params.require(:stationary_batteries_battery_bank).permit(:cell, :without_charge, :voltage_5min, :amperage_5min, :voltage_15min, :amperage_15min, :voltage_30min, :amperage_30min, :voltage_1hr, :amperage_1hr, :voltage_2hr, :amperage_2hr)
    end
end
