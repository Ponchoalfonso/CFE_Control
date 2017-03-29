class InsulationResistanceTransformersController < ApplicationController
  before_action :set_insulation_resistance_transformer, only: [:show, :edit, :update, :destroy]

  # GET /insulation_resistance_transformers
  # GET /insulation_resistance_transformers.json
  def index
    @insulation_resistance_transformers = InsulationResistanceTransformer.all
  end

  # GET /insulation_resistance_transformers/1
  # GET /insulation_resistance_transformers/1.json
  def show
  end

  # GET /insulation_resistance_transformers/new
  def new
    @insulation_resistance_transformer = InsulationResistanceTransformer.new
  end

  # GET /insulation_resistance_transformers/1/edit
  def edit
  end

  # POST /insulation_resistance_transformers
  # POST /insulation_resistance_transformers.json
  def create
    @insulation_resistance_transformer = InsulationResistanceTransformer.new(insulation_resistance_transformer_params)

    respond_to do |format|
      if @insulation_resistance_transformer.save
        format.html { redirect_to @insulation_resistance_transformer, notice: 'Insulation resistance transformer was successfully created.' }
        format.json { render :show, status: :created, location: @insulation_resistance_transformer }
      else
        format.html { render :new }
        format.json { render json: @insulation_resistance_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insulation_resistance_transformers/1
  # PATCH/PUT /insulation_resistance_transformers/1.json
  def update
    respond_to do |format|
      if @insulation_resistance_transformer.update(insulation_resistance_transformer_params)
        format.html { redirect_to @insulation_resistance_transformer, notice: 'Insulation resistance transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @insulation_resistance_transformer }
      else
        format.html { render :edit }
        format.json { render json: @insulation_resistance_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insulation_resistance_transformers/1
  # DELETE /insulation_resistance_transformers/1.json
  def destroy
    @insulation_resistance_transformer.destroy
    respond_to do |format|
      format.html { redirect_to insulation_resistance_transformers_url, notice: 'Insulation resistance transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insulation_resistance_transformer
      @insulation_resistance_transformer = InsulationResistanceTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insulation_resistance_transformer_params
      params.require(:insulation_resistance_transformer).permit(:proof, :line, :guard, :earth, :mide, :number, :weather, :resistance)
    end
end
