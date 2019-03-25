class ObjetsController < ApplicationController
  before_action :set_objet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  access all: [:show, :index], user: {except: [:destroy]}, admin: :all

  # GET /objets
  # GET /objets.json
  def index
    @objets = Objet.all
  end

  # GET /objets/1
  # GET /objets/1.json
  def show
  end

  # GET /objets/new
  def new
    @objet = Objet.new
  end

  # GET /objets/1/edit
  def edit
  end

  # POST /objets
  # POST /objets.json
  def create
    @objet = Objet.new(objet_params)

    respond_to do |format|
      if @objet.save
        format.html { redirect_to root_path, notice: 'Objet was successfully created.' }
        format.json { render :show, status: :created, location: @objet }
      else
        format.html { render :new }
        format.json { render json: @objet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objets/1
  # PATCH/PUT /objets/1.json
  def update
    respond_to do |format|
      if @objet.update(objet_params)
        format.html { redirect_to root_path, notice: 'Objet was successfully updated.' }
        format.json { render :show, status: :ok, location: @objet }
      else
        format.html { render :edit }
        format.json { render json: @objet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objets/1
  # DELETE /objets/1.json
  def destroy
    @objet.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Objet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objet
      @objet = Objet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objet_params
      params.require(:objet).permit(:title, :content, :price)
    end
end
