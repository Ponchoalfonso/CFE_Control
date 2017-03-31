class TransformationRatioTransfromersController < ApplicationController
  before_action :set_transformation_ratio_transfromer, only: [:show, :edit, :update, :destroy]

  # GET /transformation_ratio_transfromers
  # GET /transformation_ratio_transfromers.json
  def index
    @transformation_ratio_transfromers = TransformationRatioTransfromer.all
  end

  # GET /transformation_ratio_transfromers/1
  # GET /transformation_ratio_transfromers/1.json
  def show
  end

  # GET /transformation_ratio_transfromers/new
  def new
    @transformation_ratio_transfromer = TransformationRatioTransfromer.new
  end

  # GET /transformation_ratio_transfromers/1/edit
  def edit
  end

  # POST /transformation_ratio_transfromers
  # POST /transformation_ratio_transfromers.json
  def create
    @transformation_ratio_transfromer = TransformationRatioTransfromer.new(transformation_ratio_transfromer_params)

    respond_to do |format|
      if @transformation_ratio_transfromer.save
        format.html { redirect_to @transformation_ratio_transfromer, notice: 'Transformation ratio transfromer was successfully created.' }
        format.json { render :show, status: :created, location: @transformation_ratio_transfromer }
      else
        format.html { render :new }
        format.json { render json: @transformation_ratio_transfromer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transformation_ratio_transfromers/1
  # PATCH/PUT /transformation_ratio_transfromers/1.json
  def update
    respond_to do |format|
      if @transformation_ratio_transfromer.update(transformation_ratio_transfromer_params)
        format.html { redirect_to @transformation_ratio_transfromer, notice: 'Transformation ratio transfromer was successfully updated.' }
        format.json { render :show, status: :ok, location: @transformation_ratio_transfromer }
      else
        format.html { render :edit }
        format.json { render json: @transformation_ratio_transfromer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transformation_ratio_transfromers/1
  # DELETE /transformation_ratio_transfromers/1.json
  def destroy
    @transformation_ratio_transfromer.destroy
    respond_to do |format|
      format.html { redirect_to transformation_ratio_transfromers_url, notice: 'Transformation ratio transfromer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transformation_ratio_transfromer
      @transformation_ratio_transfromer = TransformationRatioTransfromer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transformation_ratio_transfromer_params
      params.require(:transformation_ratio_transfromer).permit(:outlet, :relationship, :step_a, :step_b, :step_c, :difference)
    end
end
