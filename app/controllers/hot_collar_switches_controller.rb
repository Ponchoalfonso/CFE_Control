class HotCollarSwitchesController < ApplicationController
  before_action :set_hot_collar_switch, only: [:show, :edit, :update, :destroy]

  # GET /hot_collar_switches
  # GET /hot_collar_switches.json
  def index
    @hot_collar_switches = HotCollarSwitch.all
  end

  # GET /hot_collar_switches/1
  # GET /hot_collar_switches/1.json
  def show
  end

  # GET /hot_collar_switches/new
  def new
    @hot_collar_switch = HotCollarSwitch.new
  end

  # GET /hot_collar_switches/1/edit
  def edit
  end

  # POST /hot_collar_switches
  # POST /hot_collar_switches.json
  def create
    @hot_collar_switch = HotCollarSwitch.new(hot_collar_switch_params)

    respond_to do |format|
      if @hot_collar_switch.save
        format.html { redirect_to @hot_collar_switch, notice: 'Hot collar switch was successfully created.' }
        format.json { render :show, status: :created, location: @hot_collar_switch }
      else
        format.html { render :new }
        format.json { render json: @hot_collar_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hot_collar_switches/1
  # PATCH/PUT /hot_collar_switches/1.json
  def update
    respond_to do |format|
      if @hot_collar_switch.update(hot_collar_switch_params)
        format.html { redirect_to @hot_collar_switch, notice: 'Hot collar switch was successfully updated.' }
        format.json { render :show, status: :ok, location: @hot_collar_switch }
      else
        format.html { render :edit }
        format.json { render json: @hot_collar_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_collar_switches/1
  # DELETE /hot_collar_switches/1.json
  def destroy
    @hot_collar_switch.destroy
    respond_to do |format|
      format.html { redirect_to hot_collar_switches_url, notice: 'Hot collar switch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hot_collar_switch
      @hot_collar_switch = HotCollarSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hot_collar_switch_params
      params.require(:hot_collar_switch).permit(:phase, :nozzle, :mv)
    end
end
