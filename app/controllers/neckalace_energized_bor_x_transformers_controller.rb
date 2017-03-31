class NeckalaceEnergizedBorXTransformersController < ApplicationController
  before_action :set_neckalace_energized_bor_x_transformer, only: [:show, :edit, :update, :destroy]

  # GET /neckalace_energized_bor_x_transformers
  # GET /neckalace_energized_bor_x_transformers.json
  def index
    @neckalace_energized_bor_x_transformers = NeckalaceEnergizedBorXTransformer.all
  end

  # GET /neckalace_energized_bor_x_transformers/1
  # GET /neckalace_energized_bor_x_transformers/1.json
  def show
  end

  # GET /neckalace_energized_bor_x_transformers/new
  def new
    @neckalace_energized_bor_x_transformer = NeckalaceEnergizedBorXTransformer.new
  end

  # GET /neckalace_energized_bor_x_transformers/1/edit
  def edit
  end

  # POST /neckalace_energized_bor_x_transformers
  # POST /neckalace_energized_bor_x_transformers.json
  def create
    @neckalace_energized_bor_x_transformer = NeckalaceEnergizedBorXTransformer.new(neckalace_energized_bor_x_transformer_params)

    respond_to do |format|
      if @neckalace_energized_bor_x_transformer.save
        format.html { redirect_to @neckalace_energized_bor_x_transformer, notice: 'Neckalace energized bor x transformer was successfully created.' }
        format.json { render :show, status: :created, location: @neckalace_energized_bor_x_transformer }
      else
        format.html { render :new }
        format.json { render json: @neckalace_energized_bor_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neckalace_energized_bor_x_transformers/1
  # PATCH/PUT /neckalace_energized_bor_x_transformers/1.json
  def update
    respond_to do |format|
      if @neckalace_energized_bor_x_transformer.update(neckalace_energized_bor_x_transformer_params)
        format.html { redirect_to @neckalace_energized_bor_x_transformer, notice: 'Neckalace energized bor x transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @neckalace_energized_bor_x_transformer }
      else
        format.html { render :edit }
        format.json { render json: @neckalace_energized_bor_x_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neckalace_energized_bor_x_transformers/1
  # DELETE /neckalace_energized_bor_x_transformers/1.json
  def destroy
    @neckalace_energized_bor_x_transformer.destroy
    respond_to do |format|
      format.html { redirect_to neckalace_energized_bor_x_transformers_url, notice: 'Neckalace energized bor x transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neckalace_energized_bor_x_transformer
      @neckalace_energized_bor_x_transformer = NeckalaceEnergizedBorXTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neckalace_energized_bor_x_transformer_params
      params.require(:neckalace_energized_bor_x_transformer).permit(:number, :mide, :mode_proof, :lost_mv)
    end
end
