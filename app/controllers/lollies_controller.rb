class LolliesController < ApplicationController
  before_action :set_lolly, only: [:show, :edit, :update, :destroy]

  # GET /lollies
  # GET /lollies.json
  def index
    @lollies = Lolly.all
  end

  # GET /lollies/1
  # GET /lollies/1.json
  def show
  end

  # GET /lollies/new
  def new
    @lolly = Lolly.new
  end

  # GET /lollies/1/edit
  def edit
  end

  # POST /lollies
  # POST /lollies.json
  def create
    @lolly = Lolly.new(lolly_params)

    respond_to do |format|
      if @lolly.save
        format.html { redirect_to @lolly, notice: 'Lolly was successfully created.' }
        format.json { render :show, status: :created, location: @lolly }
      else
        format.html { render :new }
        format.json { render json: @lolly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lollies/1
  # PATCH/PUT /lollies/1.json
  def update
    respond_to do |format|
      if @lolly.update(lolly_params)
        format.html { redirect_to @lolly, notice: 'Lolly was successfully updated.' }
        format.json { render :show, status: :ok, location: @lolly }
      else
        format.html { render :edit }
        format.json { render json: @lolly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lollies/1
  # DELETE /lollies/1.json
  def destroy
    @lolly.destroy
    respond_to do |format|
      format.html { redirect_to lollies_url, notice: 'Lolly was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lolly
      @lolly = Lolly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lolly_params
      params.require(:lolly).permit(:name, :description, :price)
    end
end
