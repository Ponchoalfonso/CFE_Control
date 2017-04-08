class NpfhtransformersController < ApplicationController
  before_action :set_npfhtransformer, only: [:show, :edit, :update, :destroy]

  # GET /npfhtransformers
  # GET /npfhtransformers.json
  def index
    @npfhtransformers = Npfhtransformer.all
  end

  # GET /npfhtransformers/1
  # GET /npfhtransformers/1.json
  def show
  end

  # GET /npfhtransformers/new
  def new
    @npfhtransformer = Npfhtransformer.new
  end

  # GET /npfhtransformers/1/edit
  def edit
  end

  # POST /npfhtransformers
  # POST /npfhtransformers.json
  def create
    @npfhtransformer = Npfhtransformer.new(npfhtransformer_params)

    respond_to do |format|
      if @npfhtransformer.save
        format.html { redirect_to @npfhtransformer, notice: 'Npfhtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @npfhtransformer }
      else
        format.html { render :new }
        format.json { render json: @npfhtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /npfhtransformers/1
  # PATCH/PUT /npfhtransformers/1.json
  def update
    respond_to do |format|
      if @npfhtransformer.update(npfhtransformer_params)
        format.html { redirect_to @npfhtransformer, notice: 'Npfhtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @npfhtransformer }
      else
        format.html { render :edit }
        format.json { render json: @npfhtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /npfhtransformers/1
  # DELETE /npfhtransformers/1.json
  def destroy
    @npfhtransformer.destroy
    respond_to do |format|
      format.html { redirect_to npfhtransformers_url, notice: 'Npfhtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_npfhtransformer
      @npfhtransformer = Npfhtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def npfhtransformer_params
      params.require(:npfhtransformer).permit(:number, :mide, :test_mode, :lost_mv)
    end
end
