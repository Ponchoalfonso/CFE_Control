class InsulationResistenceSwitchesController < ApplicationController
  before_action :set_insulation_resistence_switch, only: [:show, :edit, :update, :destroy]

  # GET /insulation_resistence_switches
  # GET /insulation_resistence_switches.json
  def index
    @insulation_resistence_switches = InsulationResistenceSwitch.all
  end

  # GET /insulation_resistence_switches/1
  # GET /insulation_resistence_switches/1.json
  def show
  end

  # GET /insulation_resistence_switches/new
  def new
    @insulation_resistence_switch = InsulationResistenceSwitch.new
  end

  # GET /insulation_resistence_switches/1/edit
  def edit
  end

  # POST /insulation_resistence_switches
  # POST /insulation_resistence_switches.json
  def create
    @insulation_resistence_switch = InsulationResistenceSwitch.new(insulation_resistence_switch_params)

    respond_to do |format|
      if @insulation_resistence_switch.save
        format.html { redirect_to @insulation_resistence_switch, notice: 'Insulation resistence switch was successfully created.' }
        format.json { render :show, status: :created, location: @insulation_resistence_switch }
      else
        format.html { render :new }
        format.json { render json: @insulation_resistence_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insulation_resistence_switches/1
  # PATCH/PUT /insulation_resistence_switches/1.json
  def update
    respond_to do |format|
      if @insulation_resistence_switch.update(insulation_resistence_switch_params)
        format.html { redirect_to @insulation_resistence_switch, notice: 'Insulation resistence switch was successfully updated.' }
        format.json { render :show, status: :ok, location: @insulation_resistence_switch }
      else
        format.html { render :edit }
        format.json { render json: @insulation_resistence_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insulation_resistence_switches/1
  # DELETE /insulation_resistence_switches/1.json
  def destroy
    @insulation_resistence_switch.destroy
    respond_to do |format|
      format.html { redirect_to insulation_resistence_switches_url, notice: 'Insulation resistence switch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insulation_resistence_switch
      @insulation_resistence_switch = InsulationResistenceSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insulation_resistence_switch_params
      params.require(:insulation_resistence_switch).permit(:phase, :proof, :position_switch, :connection, :date)
    end
end
