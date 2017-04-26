class OwntransformersController < ApplicationController
  before_action :set_owntransformer, only: [:show, :edit, :update, :destroy]
  before_action :set_subestations, only: [:new, :edit]

  # GET /owntransformers
  # GET /owntransformers.json
  def index
    @owntransformers = Owntransformer.all
  end

  # GET /owntransformers/1
  # GET /owntransformers/1.json
  def show
  end

  # GET /owntransformers/new
  def new
    @owntransformer = Owntransformer.new
  end

  # GET /owntransformers/1/edit
  def edit
  end

  # POST /owntransformers
  # POST /owntransformers.json
  def create
    @owntransformer = Owntransformer.new(owntransformer_params)

    respond_to do |format|
      if @owntransformer.save
        format.html { redirect_to @owntransformer, notice: 'Owntransformer was successfully created.' }
        format.json { render :show, status: :created, location: @owntransformer }
      else
        format.html { render :new }
        format.json { render json: @owntransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owntransformers/1
  # PATCH/PUT /owntransformers/1.json
  def update
    respond_to do |format|
      if @owntransformer.update(owntransformer_params)
        format.html { redirect_to @owntransformer, notice: 'Owntransformer was successfully updated.' }
        format.json { render :show, status: :ok, location: @owntransformer }
      else
        format.html { render :edit }
        format.json { render json: @owntransformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owntransformers/1
  # DELETE /owntransformers/1.json
  def destroy
    @owntransformer.destroy
    respond_to do |format|
      format.html { redirect_to owntransformers_url, notice: 'Owntransformer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owntransformer
      @owntransformer = Owntransformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owntransformer_params
      params.require(:owntransformer).permit(:name, :lastupdate, :subestation_id)
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
