class SbbanksController < ApplicationController
  before_action :set_sbbank, only: [:show, :edit, :update, :destroy]

  # GET /sbbanks
  # GET /sbbanks.json
  def index
    @sbbanks = Sbbank.all
  end

  # GET /sbbanks/1
  # GET /sbbanks/1.json
  def show
  end

  # GET /sbbanks/new
  def new
    @sbbank = Sbbank.new
  end

  # GET /sbbanks/1/edit
  def edit
  end

  # POST /sbbanks
  # POST /sbbanks.json
  def create
    @sbbank = Sbbank.new(sbbank_params)

    respond_to do |format|
      if @sbbank.save
        format.html { redirect_to @sbbank, notice: 'Sbbank was successfully created.' }
        format.json { render :show, status: :created, location: @sbbank }
      else
        format.html { render :new }
        format.json { render json: @sbbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sbbanks/1
  # PATCH/PUT /sbbanks/1.json
  def update
    respond_to do |format|
      if @sbbank.update(sbbank_params)
        format.html { redirect_to @sbbank, notice: 'Sbbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @sbbank }
      else
        format.html { render :edit }
        format.json { render json: @sbbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sbbanks/1
  # DELETE /sbbanks/1.json
  def destroy
    @sbbank.destroy
    respond_to do |format|
      format.html { redirect_to sbbanks_url, notice: 'Sbbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sbbank
      @sbbank = Sbbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sbbank_params
      params.require(:sbbank).permit(:cell, :without_charge, :voltage_5min, :amperage_5min, :voltage_15min, :amperage_15min, :voltage_30min, :amperage_30min, :voltage_1hr, :amperage_1hr, :voltage_2hr, :amperage_2hr, :t_number)
    end
end
