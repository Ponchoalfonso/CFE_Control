class EtnxtransformersController < ApplicationController
  before_action :set_etnxtransformer, only: [:show, :edit, :update, :destroy]

  # GET /etnxtransformers
  # GET /etnxtransformers.json
  def index
    @etnxtransformers = Etnxtransformer.all
  end

  # GET /etnxtransformers/1
  # GET /etnxtransformers/1.json
  def show
  end

  # GET /etnxtransformers/new
  def new
    @etnxtransformer = Etnxtransformer.new
  end

  # GET /etnxtransformers/1/edit
  def edit
  end

  # POST /etnxtransformers
  # POST /etnxtransformers.json
  def create
    @etnxtransformer = Etnxtransformer.new(etnxtransformer_params)

    respond_to do |format|
      if @etnxtransformer.save
        format.html { redirect_to @etnxtransformer, notice: 'Etnxtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @etnxtransformer }
      else
        format.html { render :new }
        format.json { render json: @etnxtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etnxtransformers/1
  # PATCH/PUT /etnxtransformers/1.json
  def update
    respond_to do |format|
      if @etnxtransformer.update(etnxtransformer_params)
        format.html { redirect_to @etnxtransformer, notice: 'Etnxtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @etnxtransformer }
      else
        format.html { render :edit }
        format.json { render json: @etnxtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etnxtransformers/1
  # DELETE /etnxtransformers/1.json
  def destroy
    @etnxtransformer.destroy
    respond_to do |format|
      format.html { redirect_to etnxtransformers_url, notice: 'Etnxtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etnxtransformer
      @etnxtransformer = Etnxtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etnxtransformer_params
      params.require(:etnxtransformer).permit(:number, :mide, :test_mode, :lost_mv, :t_number)
    end
end
