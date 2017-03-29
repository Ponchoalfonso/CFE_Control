class TransformationRatioTransformersController < ApplicationController
  before_action :set_transformation_ratio_transformer, only: [:show, :edit, :update, :destroy]

  # GET /transformation_ratio_transformers
  # GET /transformation_ratio_transformers.json
  def index
    @transformation_ratio_transformers = TransformationRatioTransformer.all
  end

  # GET /transformation_ratio_transformers/1
  # GET /transformation_ratio_transformers/1.json
  def show
  end

  # GET /transformation_ratio_transformers/new
  def new
    @transformation_ratio_transformer = TransformationRatioTransformer.new
  end

  # GET /transformation_ratio_transformers/1/edit
  def edit
  end

  # POST /transformation_ratio_transformers
  # POST /transformation_ratio_transformers.json
  def create
    @transformation_ratio_transformer = TransformationRatioTransformer.new(transformation_ratio_transformer_params)

    respond_to do |format|
      if @transformation_ratio_transformer.save
        format.html { redirect_to @transformation_ratio_transformer, notice: 'Transformation ratio transformer was successfully created.' }
        format.json { render :show, status: :created, location: @transformation_ratio_transformer }
      else
        format.html { render :new }
        format.json { render json: @transformation_ratio_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transformation_ratio_transformers/1
  # PATCH/PUT /transformation_ratio_transformers/1.json
  def update
    respond_to do |format|
      if @transformation_ratio_transformer.update(transformation_ratio_transformer_params)
        format.html { redirect_to @transformation_ratio_transformer, notice: 'Transformation ratio transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @transformation_ratio_transformer }
      else
        format.html { render :edit }
        format.json { render json: @transformation_ratio_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transformation_ratio_transformers/1
  # DELETE /transformation_ratio_transformers/1.json
  def destroy
    @transformation_ratio_transformer.destroy
    respond_to do |format|
      format.html { redirect_to transformation_ratio_transformers_url, notice: 'Transformation ratio transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transformation_ratio_transformer
      @transformation_ratio_transformer = TransformationRatioTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transformation_ratio_transformer_params
      params.require(:transformation_ratio_transformer).permit(:outlet_tap, :nominal_relationship, :step_a, :step_b, :step_c, :difference)
    end
end
