class DongsController < ApplicationController
  before_action :set_dong, only: [:show, :edit, :update, :destroy]

  # GET /dongs
  # GET /dongs.json
  def index
    @dongs = Dong.all
  end

  # GET /dongs/1
  # GET /dongs/1.json
  def show
  end

  # GET /dongs/new
  def new
    @dong = Dong.new
  end

  # GET /dongs/1/edit
  def edit
  end

  # POST /dongs
  # POST /dongs.json
  def create
    @dong = Dong.new(dong_params)

    respond_to do |format|
      if @dong.save
        format.html { redirect_to @dong, notice: 'Dong was successfully created.' }
        format.json { render :show, status: :created, location: @dong }
      else
        format.html { render :new }
        format.json { render json: @dong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dongs/1
  # PATCH/PUT /dongs/1.json
  def update
    respond_to do |format|
      if @dong.update(dong_params)
        format.html { redirect_to @dong, notice: 'Dong was successfully updated.' }
        format.json { render :show, status: :ok, location: @dong }
      else
        format.html { render :edit }
        format.json { render json: @dong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dongs/1
  # DELETE /dongs/1.json
  def destroy
    @dong.destroy
    respond_to do |format|
      format.html { redirect_to dongs_url, notice: 'Dong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def expand
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dong
      @dong = Dong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dong_params
      params.require(:dong).permit(:name, :image)
    end
end
