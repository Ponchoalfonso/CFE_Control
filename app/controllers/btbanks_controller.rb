class BtbanksController < ApplicationController
  before_action :set_btbank, only: [:show, :edit, :update, :destroy]
  before_action :set_subestations, only: [:new, :edit]

  # GET /btbanks
  # GET /btbanks.json
  def index
    @btbanks = Btbank.all
  end

  # GET /btbanks/1
  # GET /btbanks/1.json
  def show
  end

  # GET /btbanks/new
  def new
    @btbank = Btbank.new
  end

  # GET /btbanks/1/edit
  def edit
  end

  # POST /btbanks
  # POST /btbanks.json
  def create
    @btbank = Btbank.new(btbank_params)

    respond_to do |format|
      if @btbank.save
        format.html { redirect_to @btbank, notice: 'Btbank was successfully created.' }
        format.json { render :show, status: :created, location: @btbank }
      else
        format.html { render :new }
        format.json { render json: @btbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /btbanks/1
  # PATCH/PUT /btbanks/1.json
  def update
    respond_to do |format|
      if @btbank.update(btbank_params)
        format.html { redirect_to @btbank, notice: 'Btbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @btbank }
      else
        format.html { render :edit }
        format.json { render json: @btbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /btbanks/1
  # DELETE /btbanks/1.json
  def destroy
    @btbank.destroy
    respond_to do |format|
      format.html { redirect_to btbanks_url, notice: 'Btbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_btbank
      @btbank = Btbank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def btbank_params
      params.require(:btbank).permit(:name, :lastupdate, :subestation_id)
    end

    #Array que contiene las opciones para seleccionar
    def set_subestations
      #Creamos un array con todos los nombres de las subestaciones
      @subestations = Array.new

      #Inicializamos nuestro array iterando las subestaciones para solo seleccionar el campo name
      Subestation.all.each do |s|
        @subestations.push([s.name, s.id])
      end
    end

end
