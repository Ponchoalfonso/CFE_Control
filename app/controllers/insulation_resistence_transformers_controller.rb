class InsulationResistenceTransformersController < ApplicationController
  before_action :set_insulation_resistence_transformer, only: [:show, :edit, :update, :destroy]

  # GET /insulation_resistence_transformers
  # GET /insulation_resistence_transformers.json
  def index
    @insulation_resistence_transformers = InsulationResistenceTransformer.all
  end

  # GET /insulation_resistence_transformers/1
  # GET /insulation_resistence_transformers/1.json
  def show
  end

  # GET /insulation_resistence_transformers/new
  def new
    @insulation_resistence_transformer = InsulationResistenceTransformer.new
  end

  # GET /insulation_resistence_transformers/1/edit
  def edit
  end

  # POST /insulation_resistence_transformers
  # POST /insulation_resistence_transformers.json
  def create
    @insulation_resistence_transformer = InsulationResistenceTransformer.new(insulation_resistence_transformer_params)

    respond_to do |format|
      if @insulation_resistence_transformer.save
        format.html { redirect_to @insulation_resistence_transformer, notice: 'Insulation resistence transformer was successfully created.' }
        format.json { render :show, status: :created, location: @insulation_resistence_transformer }
      else
        format.html { render :new }
        format.json { render json: @insulation_resistence_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insulation_resistence_transformers/1
  # PATCH/PUT /insulation_resistence_transformers/1.json
  def update
    respond_to do |format|
      if @insulation_resistence_transformer.update(insulation_resistence_transformer_params)
        format.html { redirect_to @insulation_resistence_transformer, notice: 'Insulation resistence transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @insulation_resistence_transformer }
      else
        format.html { render :edit }
        format.json { render json: @insulation_resistence_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insulation_resistence_transformers/1
  # DELETE /insulation_resistence_transformers/1.json
  def destroy
    @insulation_resistence_transformer.destroy
    respond_to do |format|
      format.html { redirect_to insulation_resistence_transformers_url, notice: 'Insulation resistence transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insulation_resistence_transformer
      @insulation_resistence_transformer = InsulationResistenceTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insulation_resistence_transformer_params
      params.require(:insulation_resistence_transformer).permit(:proof, :line, :guard, :earth, :mide, :number, :time, :resistance)
    end
end
