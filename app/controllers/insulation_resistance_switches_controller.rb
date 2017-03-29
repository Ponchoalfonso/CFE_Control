class InsulationResistanceSwitchesController < ApplicationController
  before_action :set_insulation_resistance_switch, only: [:show, :edit, :update, :destroy]

  # GET /insulation_resistance_switches
  # GET /insulation_resistance_switches.json
  def index
    @insulation_resistance_switches = InsulationResistanceSwitch.all
  end

  # GET /insulation_resistance_switches/1
  # GET /insulation_resistance_switches/1.json
  def show
  end

  # GET /insulation_resistance_switches/new
  def new
    @insulation_resistance_switch = InsulationResistanceSwitch.new
  end

  # GET /insulation_resistance_switches/1/edit
  def edit
  end

  # POST /insulation_resistance_switches
  # POST /insulation_resistance_switches.json
  def create
    @insulation_resistance_switch = InsulationResistanceSwitch.new(insulation_resistance_switch_params)

    respond_to do |format|
      if @insulation_resistance_switch.save
        format.html { redirect_to @insulation_resistance_switch, notice: 'Insulation resistance switch was successfully created.' }
        format.json { render :show, status: :created, location: @insulation_resistance_switch }
      else
        format.html { render :new }
        format.json { render json: @insulation_resistance_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insulation_resistance_switches/1
  # PATCH/PUT /insulation_resistance_switches/1.json
  def update
    respond_to do |format|
      if @insulation_resistance_switch.update(insulation_resistance_switch_params)
        format.html { redirect_to @insulation_resistance_switch, notice: 'Insulation resistance switch was successfully updated.' }
        format.json { render :show, status: :ok, location: @insulation_resistance_switch }
      else
        format.html { render :edit }
        format.json { render json: @insulation_resistance_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insulation_resistance_switches/1
  # DELETE /insulation_resistance_switches/1.json
  def destroy
    @insulation_resistance_switch.destroy
    respond_to do |format|
      format.html { redirect_to insulation_resistance_switches_url, notice: 'Insulation resistance switch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insulation_resistance_switch
      @insulation_resistance_switch = InsulationResistanceSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insulation_resistance_switch_params
      params.require(:insulation_resistance_switch).permit(:phase, :proof, :switch_position, :connection, :date)
    end
end
