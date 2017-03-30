class BatteryBanksController < ApplicationController
  before_action :set_battery_bank, only: [:show, :edit, :update, :destroy]

  # GET /battery_banks
  # GET /battery_banks.json
  def index
    @battery_banks = BatteryBank.all
  end

  # GET /battery_banks/1
  # GET /battery_banks/1.json
  def show
  end

  # GET /battery_banks/new
  def new
    @battery_bank = BatteryBank.new
  end

  # GET /battery_banks/1/edit
  def edit
  end

  # POST /battery_banks
  # POST /battery_banks.json
  def create
    @battery_bank = BatteryBank.new(battery_bank_params)

    respond_to do |format|
      if @battery_bank.save
        format.html { redirect_to @battery_bank, notice: 'Battery bank was successfully created.' }
        format.json { render :show, status: :created, location: @battery_bank }
      else
        format.html { render :new }
        format.json { render json: @battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battery_banks/1
  # PATCH/PUT /battery_banks/1.json
  def update
    respond_to do |format|
      if @battery_bank.update(battery_bank_params)
        format.html { redirect_to @battery_bank, notice: 'Battery bank was successfully updated.' }
        format.json { render :show, status: :ok, location: @battery_bank }
      else
        format.html { render :edit }
        format.json { render json: @battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battery_banks/1
  # DELETE /battery_banks/1.json
  def destroy
    @battery_bank.destroy
    respond_to do |format|
      format.html { redirect_to battery_banks_url, notice: 'Battery bank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battery_bank
      @battery_bank = BatteryBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battery_bank_params
<<<<<<< HEAD
      params.require(:battery_bank).permit(:cell, :without_charge, :voltage_5min, :amperage_5min, :voltage_15min, :amperage_15min, :voltage_30min, :amperage_30min, :voltage_1hr, :amperage_1hr, :voltage_2hr, :amperage_2hr)
=======
      params.require(:battery_bank).permit(:name, :number)
>>>>>>> master
    end
end
