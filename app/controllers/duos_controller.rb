class DuosController < ApplicationController
  before_action :set_duo, only: [:show, :edit, :update, :destroy]

  #Create Dogs all
  @dogs = Dog.all
  # GET /duos
  # GET /duos.json
  def index
    @duos = Duo.all
  end

  # GET /duos/1
  # GET /duos/1.json
  def show
  end

  # GET /duos/new
  def new
    @duo = Duo.new
  end

  # GET /duos/1/edit
  def edit
  end

  # POST /duos
  # POST /duos.json
  def create
    @duo = Duo.new(duo_params)

    respond_to do |format|
      if @duo.save
        format.html { redirect_to @duo, notice: 'Duo was successfully created.' }
        format.json { render :show, status: :created, location: @duo }
      else
        format.html { render :new }
        format.json { render json: @duo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duos/1
  # PATCH/PUT /duos/1.json
  def update
    respond_to do |format|
      if @duo.update(duo_params)
        format.html { redirect_to @duo, notice: 'Duo was successfully updated.' }
        format.json { render :show, status: :ok, location: @duo }
      else
        format.html { render :edit }
        format.json { render json: @duo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duos/1
  # DELETE /duos/1.json
  def destroy
    @duo.destroy
    respond_to do |format|
      format.html { redirect_to duos_url, notice: 'Duo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duo
      @duo = Duo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duo_params
      params.require(:duo).permit(:handler_id, :dog_id)
    end
end
