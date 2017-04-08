class NpfxtransformersController < ApplicationController
  before_action :set_npfxtransformer, only: [:show, :edit, :update, :destroy]

  # GET /npfxtransformers
  # GET /npfxtransformers.json
  def index
    @npfxtransformers = Npfxtransformer.all
  end

  # GET /npfxtransformers/1
  # GET /npfxtransformers/1.json
  def show
  end

  # GET /npfxtransformers/new
  def new
    @npfxtransformer = Npfxtransformer.new
  end

  # GET /npfxtransformers/1/edit
  def edit
  end

  # POST /npfxtransformers
  # POST /npfxtransformers.json
  def create
    @npfxtransformer = Npfxtransformer.new(npfxtransformer_params)

    respond_to do |format|
      if @npfxtransformer.save
        format.html { redirect_to @npfxtransformer, notice: 'Npfxtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @npfxtransformer }
      else
        format.html { render :new }
        format.json { render json: @npfxtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /npfxtransformers/1
  # PATCH/PUT /npfxtransformers/1.json
  def update
    respond_to do |format|
      if @npfxtransformer.update(npfxtransformer_params)
        format.html { redirect_to @npfxtransformer, notice: 'Npfxtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @npfxtransformer }
      else
        format.html { render :edit }
        format.json { render json: @npfxtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /npfxtransformers/1
  # DELETE /npfxtransformers/1.json
  def destroy
    @npfxtransformer.destroy
    respond_to do |format|
      format.html { redirect_to npfxtransformers_url, notice: 'Npfxtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_npfxtransformer
      @npfxtransformer = Npfxtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def npfxtransformer_params
      params.require(:npfxtransformer).permit(:number, :mide, :test_mode, :lost_mv)
    end
end
