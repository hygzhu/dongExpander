class ExpandsController < ApplicationController
  before_action :set_expand, only: [:show, :edit, :update, :destroy]

  # GET /expands
  # GET /expands.json
  def index
    @expand = Expand.new
    @expands = Expand.all
  end

  # GET /expands/1
  # GET /expands/1.json
  def show
    characters = @expand.text.chars
    #Set expanded dong
    dongs = Dong.all
    dongNames = dongs.map{|dong| dong.name}
    @images = []
    str = ""

    while characters.size > 0
        str += characters.shift
        if !dongNames.index(str).nil?
          @images.push(dongs[dongNames.index(str)].image)
          str = ""
        end
    end

    @text = str


  end

  # GET /expands/new
  def new
    @expand = Expand.new
  end

  # GET /expands/1/edit
  def edit
  end

  # POST /expands
  # POST /expands.json
  def create
    @expand = Expand.new(expand_params)

    respond_to do |format|
      if @expand.save
        format.html { redirect_to @expand, notice: 'Expand was successfully created.' }
        format.json { render :show, status: :created, location: @expand }
      else
        format.html { render :new }
        format.json { render json: @expand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expands/1
  # PATCH/PUT /expands/1.json
  def update
    respond_to do |format|
      if @expand.update(expand_params)
        format.html { redirect_to @expand, notice: 'Expand was successfully updated.' }
        format.json { render :show, status: :ok, location: @expand }
      else
        format.html { render :edit }
        format.json { render json: @expand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expands/1
  # DELETE /expands/1.json
  def destroy
    @expand.destroy
    respond_to do |format|
      format.html { redirect_to expands_url, notice: 'Expand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expand
      @expand = Expand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expand_params
      params.require(:expand).permit(:text)
    end
end
