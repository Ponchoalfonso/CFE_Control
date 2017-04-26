class PwtransformersController < ApplicationController
  before_action :set_pwtransformer, only: [:show, :edit, :update, :destroy]
  before_action :set_subestations, only: [:new, :edit]

  # GET /pwtransformers
  # GET /pwtransformers.json
  def index
    @pwtransformers = Pwtransformer.all
  end

  # GET /pwtransformers/1
  # GET /pwtransformers/1.json
  def show
  end

  # GET /pwtransformers/new
  def new
    @pwtransformer = Pwtransformer.new
  end

  # GET /pwtransformers/1/edit
  def edit
  end

  # POST /pwtransformers
  # POST /pwtransformers.json
  def create
    @pwtransformer = Pwtransformer.new(pwtransformer_params)

    respond_to do |format|
      if @pwtransformer.save
        format.html { redirect_to @pwtransformer, notice: 'Pwtransformer was successfully created.' }
        format.json { render :show, status: :created, location: @pwtransformer }
      else
        format.html { render :new }
        format.json { render json: @pwtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pwtransformers/1
  # PATCH/PUT /pwtransformers/1.json
  def update
    respond_to do |format|
      if @pwtransformer.update(pwtransformer_params)
        format.html { redirect_to @pwtransformer, notice: 'Pwtransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @pwtransformer }
      else
        format.html { render :edit }
        format.json { render json: @pwtransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pwtransformers/1
  # DELETE /pwtransformers/1.json
  def destroy
    @pwtransformer.destroy
    respond_to do |format|
      format.html { redirect_to pwtransformers_url, notice: 'Pwtransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pwtransformer
      @pwtransformer = Pwtransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pwtransformer_params
      params.require(:pwtransformer).permit(:name, :lastupdate, :subestation_id)
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
