class MotherboardsController < ApplicationController
  before_action :set_motherboard, only: %i[ show edit update destroy ]

  # GET /motherboards or /motherboards.json
  def index
    @motherboards = Motherboard.paginate(page: params[:page], per_page: 4)
  end

  # GET /motherboards/1 or /motherboards/1.json
  def show
  end

  # GET /motherboards/new
  def new
    if current_user
      if current_user.admin
        @motherboard = Motherboard.new
      else
        flash[:alert] = "You need to be logged in as admin to add hardware"
        redirect_to root_path
      end
    else
      flash[:alert] = "Log in with an admin account"
      redirect_to new_user_session_path
    end
    
  end

  # GET /motherboards/1/edit
  def edit
  end

  # POST /motherboards or /motherboards.json
  def create
    @motherboard = Motherboard.new(motherboard_params)

    respond_to do |format|
      if @motherboard.save
        format.html { redirect_to @motherboard, notice: "Motherboard was successfully created." }
        format.json { render :show, status: :created, location: @motherboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @motherboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motherboards/1 or /motherboards/1.json
  def update
    respond_to do |format|
      if @motherboard.update(motherboard_params)
        format.html { redirect_to @motherboard, notice: "Motherboard was successfully updated." }
        format.json { render :show, status: :ok, location: @motherboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @motherboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motherboards/1 or /motherboards/1.json
  def destroy
    @motherboard.destroy
    respond_to do |format|
      format.html { redirect_to motherboards_url, notice: "Motherboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motherboard
      @motherboard = Motherboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def motherboard_params
      params.require(:motherboard).permit(:brand, :name, :socket, :form_factor, :memory_max, :memory_slots, :color, :price)
    end
end
