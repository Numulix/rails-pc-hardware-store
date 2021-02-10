class PcCasesController < ApplicationController
  before_action :set_pc_case, only: %i[ show edit update destroy ]

  # GET /pc_cases or /pc_cases.json
  def index
    @pc_cases = PcCase.all
  end

  # GET /pc_cases/1 or /pc_cases/1.json
  def show
  end

  # GET /pc_cases/new
  def new
    @pc_case = PcCase.new
  end

  # GET /pc_cases/1/edit
  def edit
  end

  # POST /pc_cases or /pc_cases.json
  def create
    @pc_case = PcCase.new(pc_case_params)

    respond_to do |format|
      if @pc_case.save
        format.html { redirect_to @pc_case, notice: "Pc case was successfully created." }
        format.json { render :show, status: :created, location: @pc_case }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pc_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_cases/1 or /pc_cases/1.json
  def update
    respond_to do |format|
      if @pc_case.update(pc_case_params)
        format.html { redirect_to @pc_case, notice: "Pc case was successfully updated." }
        format.json { render :show, status: :ok, location: @pc_case }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pc_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_cases/1 or /pc_cases/1.json
  def destroy
    @pc_case.destroy
    respond_to do |format|
      format.html { redirect_to pc_cases_url, notice: "Pc case was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_case
      @pc_case = PcCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pc_case_params
      params.require(:pc_case).permit(:brand, :name, :case_type, :color, :power_supply, :side_panel_window, :external_bays, :internal_bays, :price)
    end
end
