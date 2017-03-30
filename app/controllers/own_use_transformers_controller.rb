class OwnUseTransformersController < ApplicationController
  before_action :set_own_use_transformer, only: [:show, :edit, :update, :destroy]

  # GET /own_use_transformers
  # GET /own_use_transformers.json
  def index
    @own_use_transformers = OwnUseTransformer.all
  end

  # GET /own_use_transformers/1
  # GET /own_use_transformers/1.json
  def show
  end

  # GET /own_use_transformers/new
  def new
    @own_use_transformer = OwnUseTransformer.new
  end

  # GET /own_use_transformers/1/edit
  def edit
  end

  # POST /own_use_transformers
  # POST /own_use_transformers.json
  def create
    @own_use_transformer = OwnUseTransformer.new(own_use_transformer_params)

    respond_to do |format|
      if @own_use_transformer.save
        format.html { redirect_to @own_use_transformer, notice: 'Own use transformer was successfully created.' }
        format.json { render :show, status: :created, location: @own_use_transformer }
      else
        format.html { render :new }
        format.json { render json: @own_use_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /own_use_transformers/1
  # PATCH/PUT /own_use_transformers/1.json
  def update
    respond_to do |format|
      if @own_use_transformer.update(own_use_transformer_params)
        format.html { redirect_to @own_use_transformer, notice: 'Own use transformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @own_use_transformer }
      else
        format.html { render :edit }
        format.json { render json: @own_use_transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /own_use_transformers/1
  # DELETE /own_use_transformers/1.json
  def destroy
    @own_use_transformer.destroy
    respond_to do |format|
      format.html { redirect_to own_use_transformers_url, notice: 'Own use transformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_own_use_transformer
      @own_use_transformer = OwnUseTransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def own_use_transformer_params
      params.require(:own_use_transformer).permit(:name, :number)
    end
end
