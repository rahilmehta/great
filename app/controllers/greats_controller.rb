class GreatsController < ApplicationController
  before_action :set_great, only: [:show, :edit, :update, :destroy]

  # GET /greats
  # GET /greats.json
  def index
    @greats = Great.all
  end

  # GET /greats/1
  # GET /greats/1.json
  def show
  end

  # GET /greats/new
  def new
    @great = Great.new
  end

  # GET /greats/1/edit
  def edit
  end

  # POST /greats
  # POST /greats.json
  def create
    @great = Great.new(great_params)

    respond_to do |format|
      if @great.save
        format.html { redirect_to @great, notice: 'Great was successfully created.' }
        format.json { render :show, status: :created, location: @great }
      else
        format.html { render :new }
        format.json { render json: @great.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greats/1
  # PATCH/PUT /greats/1.json
  def update
    respond_to do |format|
      if @great.update(great_params)
        format.html { redirect_to @great, notice: 'Great was successfully updated.' }
        format.json { render :show, status: :ok, location: @great }
      else
        format.html { render :edit }
        format.json { render json: @great.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greats/1
  # DELETE /greats/1.json
  def destroy
    @great.destroy
    respond_to do |format|
      format.html { redirect_to greats_url, notice: 'Great was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_great
      @great = Great.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def great_params
      params.require(:great).permit(:name, :content)
    end
end
