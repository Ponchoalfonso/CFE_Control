class SubestationsController < ApplicationController
  before_action :set_subestation, only: [:show, :edit, :update, :destroy]

  # GET /subestations
  # GET /subestations.json
  def index
    @subestations = Subestation.all
  end

  # GET /subestations/1
  # GET /subestations/1.json
  def show
  end

  # GET /subestations/new
  def new
    @subestation = Subestation.new
  end

  # GET /subestations/1/edit
  def edit
  end

  # POST /subestations
  # POST /subestations.json
  def create
    @subestation = Subestation.new(subestation_params)

    respond_to do |format|
      if @subestation.save
        format.html { redirect_to @subestation, notice: 'Subestation was successfully created.' }
        format.json { render :show, status: :created, location: @subestation }
      else
        format.html { render :new }
        format.json { render json: @subestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subestations/1
  # PATCH/PUT /subestations/1.json
  def update
    respond_to do |format|
      if @subestation.update(subestation_params)
        format.html { redirect_to @subestation, notice: 'Subestation was successfully updated.' }
        format.json { render :show, status: :ok, location: @subestation }
      else
        format.html { render :edit }
        format.json { render json: @subestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subestations/1
  # DELETE /subestations/1.json
  def destroy
    @subestation.destroy
    respond_to do |format|
      format.html { redirect_to subestations_url, notice: 'Subestation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subestation
      @subestation = Subestation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subestation_params
      params.require(:subestation).permit(:name, :abreviation, :identifier)
    end
end
