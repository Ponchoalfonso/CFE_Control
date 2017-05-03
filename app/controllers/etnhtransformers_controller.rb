class EtnhtransformersController < ApplicationController
  before_action :set_etnhtransformer, only: [:show, :edit, :update, :destroy]

  # GET /etnhtransformers
  # GET /etnhtransformers.json
  def index
    @etnhtransformers = Etnhtransformer.all
  end

  # GET /etnhtransformers/1
  # GET /etnhtransformers/1.json
  def show
  end

  # GET /etnhtransformers/new
  def new
    @etnhtransformer = Etnhtransformer.new
  end

  # GET /etnhtransformers/1/edit
  def edit
  end

  # POST /etnhtransformers
  # POST /etnhtransformers.json
  def create
    @etnhtransformer = Etnhtransformer.new(etnhtransformer_params)

    respond_to do |format|
      if @etnhtransformer.save
        format.html { redirect_to @etnhtransformer, notice: 'Etnhtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @etnhtransformer }
      else
        format.html { render :new }
        format.json { render json: @etnhtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etnhtransformers/1
  # PATCH/PUT /etnhtransformers/1.json
  def update
    respond_to do |format|
      if @etnhtransformer.update(etnhtransformer_params)
        format.html { redirect_to @etnhtransformer, notice: 'Etnhtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @etnhtransformer }
      else
        format.html { render :edit }
        format.json { render json: @etnhtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etnhtransformers/1
  # DELETE /etnhtransformers/1.json
  def destroy
    @etnhtransformer.destroy
    respond_to do |format|
      format.html { redirect_to etnhtransformers_url, notice: 'Etnhtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etnhtransformer
      @etnhtransformer = Etnhtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etnhtransformer_params
      params.require(:etnhtransformer).permit(:number, :mide, :test_mode, :lost_mv, :t_number)
    end
end
