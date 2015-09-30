class AppztblesController < ApplicationController
  before_action :set_appztble, only: [:show, :edit, :update, :destroy]

  # GET /appztbles
  # GET /appztbles.json
  def index
    @appztbles = Appztble.all
  end

  # GET /appztbles/1
  # GET /appztbles/1.json
  def show
  end

  # GET /appztbles/new
  def new
    @appztble = Appztble.new
  end

  # GET /appztbles/1/edit
  def edit
  end

  # POST /appztbles
  # POST /appztbles.json
  def create
    @appztble = Appztble.new(appztble_params)

    respond_to do |format|
      if @appztble.save
        format.html { redirect_to @appztble, notice: 'Appztble was successfully created.' }
        format.json { render :show, status: :created, location: @appztble }
      else
        format.html { render :new }
        format.json { render json: @appztble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appztbles/1
  # PATCH/PUT /appztbles/1.json
  def update
    respond_to do |format|
      if @appztble.update(appztble_params)
        format.html { redirect_to @appztble, notice: 'Appztble was successfully updated.' }
        format.json { render :show, status: :ok, location: @appztble }
      else
        format.html { render :edit }
        format.json { render json: @appztble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appztbles/1
  # DELETE /appztbles/1.json
  def destroy
    @appztble.destroy
    respond_to do |format|
      format.html { redirect_to appztbles_url, notice: 'Appztble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appztble
      @appztble = Appztble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appztble_params
      params.require(:appztble).permit(:name)
    end
end
