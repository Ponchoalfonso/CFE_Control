class PowerFactorNozzleXTransformersController < ApplicationController
  before_action :set_power_factor_nozzle_x_transformer, only: [:show, :edit, :update, :destroy]

  # GET /power_factor_nozzle_x_transformers
  # GET /power_factor_nozzle_x_transformers.json
  def index
    @power_factor_nozzle_x_transformers = PowerFactorNozzleXTransformer.all
  end

  # GET /power_factor_nozzle_x_transformers/1
  # GET /power_factor_nozzle_x_transformers/1.json
  def show
  end

  # GET /power_factor_nozzle_x_transformers/new
  def new
    @power_factor_nozzle_x_transformer = PowerFactorNozzleXTransformer.new
  end

  # GET /power_factor_nozzle_x_transformers/1/edit
  def edit
  end

  # POST /power_factor_nozzle_x_transformers
  # POST /power_factor_nozzle_x_transformers.json
  def create
    @power_factor_nozzle_x_transformer = PowerFactorNozzleXTransformer.new(power_factor_nozzle_x_transformer_params)

    respond_to do |format|
      if @power_factor_nozzle_x_transformer.save
        format.html { redirect_to @power_factor_nozzle_x_transformer, notice: 'Power factor nozzle x transformer was successfully created.' }
        format.json { render :show, status: :created, location: @power_factor_nozzle_x_transformer }
      else
        format.html { render :new }
        format.json { render json: @power_factor_nozzle_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_factor_nozzle_x_transformers/1
  # PATCH/PUT /power_factor_nozzle_x_transformers/1.json
  def update
    respond_to do |format|
      if @power_factor_nozzle_x_transformer.update(power_factor_nozzle_x_transformer_params)
        format.html { redirect_to @power_factor_nozzle_x_transformer, notice: 'Power factor nozzle x transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @power_factor_nozzle_x_transformer }
      else
        format.html { render :edit }
        format.json { render json: @power_factor_nozzle_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_factor_nozzle_x_transformers/1
  # DELETE /power_factor_nozzle_x_transformers/1.json
  def destroy
    @power_factor_nozzle_x_transformer.destroy
    respond_to do |format|
      format.html { redirect_to power_factor_nozzle_x_transformers_url, notice: 'Power factor nozzle x transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_factor_nozzle_x_transformer
      @power_factor_nozzle_x_transformer = PowerFactorNozzleXTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_factor_nozzle_x_transformer_params
      params.require(:power_factor_nozzle_x_transformer).permit(:number, :mide, :test_mode, :lost_mv)
    end
end
