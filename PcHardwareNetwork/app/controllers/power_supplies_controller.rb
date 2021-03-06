class PowerSuppliesController < ApplicationController
  before_action :set_power_supply, only: %i[ show edit update destroy ]

  # GET /power_supplies or /power_supplies.json
  def index
    @power_supplies = PowerSupply.paginate(page: params[:page], per_page: 4)
  end

  # GET /power_supplies/1 or /power_supplies/1.json
  def show
  end

  # GET /power_supplies/new
  def new
    if current_user
      if current_user.admin
        @power_supply = PowerSupply.new
      else
        flash[:alert] = "You need to be logged in as admin to add hardware"
        redirect_to root_path
      end
    else
      flash[:alert] = "Log in with an admin account"
      redirect_to new_user_session_path
    end
  end

  # GET /power_supplies/1/edit
  def edit
  end

  # POST /power_supplies or /power_supplies.json
  def create
    @power_supply = PowerSupply.new(power_supply_params)

    respond_to do |format|
      if @power_supply.save
        format.html { redirect_to @power_supply, notice: "Power supply was successfully created." }
        format.json { render :show, status: :created, location: @power_supply }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_supplies/1 or /power_supplies/1.json
  def update
    respond_to do |format|
      if @power_supply.update(power_supply_params)
        format.html { redirect_to @power_supply, notice: "Power supply was successfully updated." }
        format.json { render :show, status: :ok, location: @power_supply }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_supplies/1 or /power_supplies/1.json
  def destroy
    @power_supply.destroy
    respond_to do |format|
      format.html { redirect_to power_supplies_url, notice: "Power supply was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_supply
      @power_supply = PowerSupply.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def power_supply_params
      params.require(:power_supply).permit(:brand, :name, :form_factor, :efficiency_rating, :wattage, :modular, :color, :price)
    end
end
