class ProcessorCoolersController < ApplicationController
  before_action :set_processor_cooler, only: %i[ show edit update destroy ]

  # GET /processor_coolers or /processor_coolers.json
  def index
    @processor_coolers = ProcessorCooler.all
  end

  # GET /processor_coolers/1 or /processor_coolers/1.json
  def show
  end

  # GET /processor_coolers/new
  def new
    @processor_cooler = ProcessorCooler.new
  end

  # GET /processor_coolers/1/edit
  def edit
  end

  # POST /processor_coolers or /processor_coolers.json
  def create
    @processor_cooler = ProcessorCooler.new(processor_cooler_params)

    respond_to do |format|
      if @processor_cooler.save
        format.html { redirect_to @processor_cooler, notice: "Processor cooler was successfully created." }
        format.json { render :show, status: :created, location: @processor_cooler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @processor_cooler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processor_coolers/1 or /processor_coolers/1.json
  def update
    respond_to do |format|
      if @processor_cooler.update(processor_cooler_params)
        format.html { redirect_to @processor_cooler, notice: "Processor cooler was successfully updated." }
        format.json { render :show, status: :ok, location: @processor_cooler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @processor_cooler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processor_coolers/1 or /processor_coolers/1.json
  def destroy
    @processor_cooler.destroy
    respond_to do |format|
      format.html { redirect_to processor_coolers_url, notice: "Processor cooler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processor_cooler
      @processor_cooler = ProcessorCooler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def processor_cooler_params
      params.require(:processor_cooler).permit(:brand, :name, :fan_rpm, :noise_level, :color, :radiator_size, :price)
    end
end
