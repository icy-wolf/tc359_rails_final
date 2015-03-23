class WolvesController < ApplicationController
  before_action :set_wolf, only: [:show, :edit, :update, :destroy]

  # GET /wolves
  # GET /wolves.json
  def index
    @wolves = Wolf.all
  end

  # GET /wolves/1
  # GET /wolves/1.json
  def show
  end

  # GET /wolves/new
  def new
    @wolf = Wolf.new
  end

  # GET /wolves/1/edit
  def edit
  end

  # POST /wolves
  # POST /wolves.json
  def create
    @wolf = Wolf.new(wolf_params)

    respond_to do |format|
      if @wolf.save
        format.html { redirect_to @wolf, notice: 'Wolf was successfully created.' }
        format.json { render :show, status: :created, location: @wolf }
      else
        format.html { render :new }
        format.json { render json: @wolf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wolves/1
  # PATCH/PUT /wolves/1.json
  def update
    respond_to do |format|
      if @wolf.update(wolf_params)
        format.html { redirect_to @wolf, notice: 'Wolf was successfully updated.' }
        format.json { render :show, status: :ok, location: @wolf }
      else
        format.html { render :edit }
        format.json { render json: @wolf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wolves/1
  # DELETE /wolves/1.json
  def destroy
    @wolf.destroy
    respond_to do |format|
      format.html { redirect_to wolves_url, notice: 'Wolf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wolf
      @wolf = Wolf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wolf_params
      params.require(:wolf).permit(:name, :species, :pack_rank, :pack_number, :isAlive)
    end
end
