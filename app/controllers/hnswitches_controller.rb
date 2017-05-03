class HnswitchesController < ApplicationController
  before_action :set_hnswitch, only: [:show, :edit, :update, :destroy]

  # GET /hnswitches
  # GET /hnswitches.json
  def index
    @hnswitches = Hnswitch.all
  end

  # GET /hnswitches/1
  # GET /hnswitches/1.json
  def show
  end

  # GET /hnswitches/new
  def new
    @hnswitch = Hnswitch.new
  end

  # GET /hnswitches/1/edit
  def edit
  end

  # POST /hnswitches
  # POST /hnswitches.json
  def create
    @hnswitch = Hnswitch.new(hnswitch_params)

    respond_to do |format|
      if @hnswitch.save
        format.html { redirect_to @hnswitch, notice: 'Hnswitch was successfully created.' }
        format.json { render :show, status: :created, location: @hnswitch }
      else
        format.html { render :new }
        format.json { render json: @hnswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hnswitches/1
  # PATCH/PUT /hnswitches/1.json
  def update
    respond_to do |format|
      if @hnswitch.update(hnswitch_params)
        format.html { redirect_to @hnswitch, notice: 'Hnswitch was successfully updated.' }
        format.json { render :show, status: :ok, location: @hnswitch }
      else
        format.html { render :edit }
        format.json { render json: @hnswitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hnswitches/1
  # DELETE /hnswitches/1.json
  def destroy
    @hnswitch.destroy
    respond_to do |format|
      format.html { redirect_to hnswitches_url, notice: 'Hnswitch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hnswitch
      @hnswitch = Hnswitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hnswitch_params
      params.require(:hnswitch).permit(:phase, :nozzle, :mv, :t_number)
    end
end
