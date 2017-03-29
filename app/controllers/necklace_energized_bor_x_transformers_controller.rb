class NecklaceEnergizedBorXTransformersController < ApplicationController
  before_action :set_necklace_energized_bor_x_transformer, only: [:show, :edit, :update, :destroy]

  # GET /necklace_energized_bor_x_transformers
  # GET /necklace_energized_bor_x_transformers.json
  def index
    @necklace_energized_bor_x_transformers = NecklaceEnergizedBorXTransformer.all
  end

  # GET /necklace_energized_bor_x_transformers/1
  # GET /necklace_energized_bor_x_transformers/1.json
  def show
  end

  # GET /necklace_energized_bor_x_transformers/new
  def new
    @necklace_energized_bor_x_transformer = NecklaceEnergizedBorXTransformer.new
  end

  # GET /necklace_energized_bor_x_transformers/1/edit
  def edit
  end

  # POST /necklace_energized_bor_x_transformers
  # POST /necklace_energized_bor_x_transformers.json
  def create
    @necklace_energized_bor_x_transformer = NecklaceEnergizedBorXTransformer.new(necklace_energized_bor_x_transformer_params)

    respond_to do |format|
      if @necklace_energized_bor_x_transformer.save
        format.html { redirect_to @necklace_energized_bor_x_transformer, notice: 'Necklace energized bor x transformer was successfully created.' }
        format.json { render :show, status: :created, location: @necklace_energized_bor_x_transformer }
      else
        format.html { render :new }
        format.json { render json: @necklace_energized_bor_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /necklace_energized_bor_x_transformers/1
  # PATCH/PUT /necklace_energized_bor_x_transformers/1.json
  def update
    respond_to do |format|
      if @necklace_energized_bor_x_transformer.update(necklace_energized_bor_x_transformer_params)
        format.html { redirect_to @necklace_energized_bor_x_transformer, notice: 'Necklace energized bor x transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @necklace_energized_bor_x_transformer }
      else
        format.html { render :edit }
        format.json { render json: @necklace_energized_bor_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /necklace_energized_bor_x_transformers/1
  # DELETE /necklace_energized_bor_x_transformers/1.json
  def destroy
    @necklace_energized_bor_x_transformer.destroy
    respond_to do |format|
      format.html { redirect_to necklace_energized_bor_x_transformers_url, notice: 'Necklace energized bor x transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_necklace_energized_bor_x_transformer
      @necklace_energized_bor_x_transformer = NecklaceEnergizedBorXTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def necklace_energized_bor_x_transformer_params
      params.require(:necklace_energized_bor_x_transformer).permit(:number, :mide, :test_mode, :lost_mv)
    end
end
