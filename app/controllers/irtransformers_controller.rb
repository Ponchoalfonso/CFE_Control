class IrtransformersController < ApplicationController
  before_action :set_irtransformer, only: [:show, :edit, :update, :destroy]

  # GET /irtransformers
  # GET /irtransformers.json
  def index
    @irtransformers = Irtransformer.all
  end

  # GET /irtransformers/1
  # GET /irtransformers/1.json
  def show
  end

  # GET /irtransformers/new
  def new
    @irtransformer = Irtransformer.new
  end

  # GET /irtransformers/1/edit
  def edit
  end

  # POST /irtransformers
  # POST /irtransformers.json
  def create
    @irtransformer = Irtransformer.new(irtransformer_params)

    respond_to do |format|
      if @irtransformer.save
        format.html { redirect_to @irtransformer, notice: 'Irtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @irtransformer }
      else
        format.html { render :new }
        format.json { render json: @irtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irtransformers/1
  # PATCH/PUT /irtransformers/1.json
  def update
    respond_to do |format|
      if @irtransformer.update(irtransformer_params)
        format.html { redirect_to @irtransformer, notice: 'Irtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @irtransformer }
      else
        format.html { render :edit }
        format.json { render json: @irtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irtransformers/1
  # DELETE /irtransformers/1.json
  def destroy
    @irtransformer.destroy
    respond_to do |format|
      format.html { redirect_to irtransformers_url, notice: 'Irtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irtransformer
      @irtransformer = Irtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irtransformer_params
      params.require(:irtransformer).permit(:proof, :line, :guard, :earth, :measure, :number, :time, :resistence, :t_number)
    end
end
