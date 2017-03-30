class PowerTransformersController < ApplicationController
  before_action :set_power_transformer, only: [:show, :edit, :update, :destroy]

  # GET /power_transformers
  # GET /power_transformers.json
  def index
    @power_transformers = PowerTransformer.all
  end

  # GET /power_transformers/1
  # GET /power_transformers/1.json
  def show
  end

  # GET /power_transformers/new
  def new
    @power_transformer = PowerTransformer.new
  end

  # GET /power_transformers/1/edit
  def edit
  end

  # POST /power_transformers
  # POST /power_transformers.json
  def create
    @power_transformer = PowerTransformer.new(power_transformer_params)

    respond_to do |format|
      if @power_transformer.save
        format.html { redirect_to @power_transformer, notice: 'Power transformer was successfully created.' }
        format.json { render :show, status: :created, location: @power_transformer }
      else
        format.html { render :new }
        format.json { render json: @power_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_transformers/1
  # PATCH/PUT /power_transformers/1.json
  def update
    respond_to do |format|
      if @power_transformer.update(power_transformer_params)
        format.html { redirect_to @power_transformer, notice: 'Power transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @power_transformer }
      else
        format.html { render :edit }
        format.json { render json: @power_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_transformers/1
  # DELETE /power_transformers/1.json
  def destroy
    @power_transformer.destroy
    respond_to do |format|
      format.html { redirect_to power_transformers_url, notice: 'Power transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_transformer
      @power_transformer = PowerTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_transformer_params
      params.require(:power_transformer).permit(:name, :number)
    end
end
