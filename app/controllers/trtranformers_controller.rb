class TrtranformersController < ApplicationController
  before_action :set_trtranformer, only: [:show, :edit, :update, :destroy]

  # GET /trtranformers
  # GET /trtranformers.json
  def index
    @trtranformers = Trtranformer.all
  end

  # GET /trtranformers/1
  # GET /trtranformers/1.json
  def show
  end

  # GET /trtranformers/new
  def new
    @trtranformer = Trtranformer.new
  end

  # GET /trtranformers/1/edit
  def edit
  end

  # POST /trtranformers
  # POST /trtranformers.json
  def create
    @trtranformer = Trtranformer.new(trtranformer_params)

    respond_to do |format|
      if @trtranformer.save
        format.html { redirect_to @trtranformer, notice: 'Trtranformer was successfully created.' }
        format.json { render :show, status: :created, location: @trtranformer }
      else
        format.html { render :new }
        format.json { render json: @trtranformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trtranformers/1
  # PATCH/PUT /trtranformers/1.json
  def update
    respond_to do |format|
      if @trtranformer.update(trtranformer_params)
        format.html { redirect_to @trtranformer, notice: 'Trtranformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @trtranformer }
      else
        format.html { render :edit }
        format.json { render json: @trtranformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trtranformers/1
  # DELETE /trtranformers/1.json
  def destroy
    @trtranformer.destroy
    respond_to do |format|
      format.html { redirect_to trtranformers_url, notice: 'Trtranformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trtranformer
      @trtranformer = Trtranformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trtranformer_params
      params.require(:trtranformer).permit(:take_tap, :nominal_relationship, :phase, :difference, :t_number)
    end
end
