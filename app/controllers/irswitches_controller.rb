class IrswitchesController < ApplicationController
  before_action :set_irswitch, only: [:show, :edit, :update, :destroy]

  # GET /irswitches
  # GET /irswitches.json
  def index
    @irswitches = Irswitch.all
  end

  # GET /irswitches/1
  # GET /irswitches/1.json
  def show
  end

  # GET /irswitches/new
  def new
    @irswitch = Irswitch.new
  end

  # GET /irswitches/1/edit
  def edit
  end

  # POST /irswitches
  # POST /irswitches.json
  def create
    @irswitch = Irswitch.new(irswitch_params)

    respond_to do |format|
      if @irswitch.save
        format.html { redirect_to @irswitch, notice: 'Irswitch was successfully created.' }
        format.json { render :show, status: :created, location: @irswitch }
      else
        format.html { render :new }
        format.json { render json: @irswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irswitches/1
  # PATCH/PUT /irswitches/1.json
  def update
    respond_to do |format|
      if @irswitch.update(irswitch_params)
        format.html { redirect_to @irswitch, notice: 'Irswitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @irswitch }
      else
        format.html { render :edit }
        format.json { render json: @irswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irswitches/1
  # DELETE /irswitches/1.json
  def destroy
    @irswitch.destroy
    respond_to do |format|
      format.html { redirect_to irswitches_url, notice: 'Irswitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irswitch
      @irswitch = Irswitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irswitch_params
      params.require(:irswitch).permit(:phase, :proof, :position_switch, :connection, :gigaohms)
    end
end
