class ProcessorsController < ApplicationController
  before_action :set_processor, only: %i[ show edit update destroy ]

  # GET /processors or /processors.json
  def index
    @processors = Processor.paginate(page: params[:page], per_page: 4)
  end

  # GET /processors/1 or /processors/1.json
  def show
  end

  # GET /processors/new
  def new
    if current_user
      if current_user.admin
        @processor = Processor.new
      else
        flash[:alert] = "You need to be logged in as admin to add hardware"
        redirect_to root_path
      end
    else
      flash[:alert] = "Log in with an admin account"
      redirect_to new_user_session_path
    end
  end

  # GET /processors/1/edit
  def edit
  end

  # POST /processors or /processors.json
  def create
    @processor = Processor.new(processor_params)

    respond_to do |format|
      if @processor.save
        format.html { redirect_to @processor, notice: "Processor was successfully created." }
        format.json { render :show, status: :created, location: @processor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @processor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processors/1 or /processors/1.json
  def update
    respond_to do |format|
      if @processor.update(processor_params)
        format.html { redirect_to @processor, notice: "Processor was successfully updated." }
        format.json { render :show, status: :ok, location: @processor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @processor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processors/1 or /processors/1.json
  def destroy
    @processor.destroy
    respond_to do |format|
      format.html { redirect_to processors_url, notice: "Processor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processor
      @processor = Processor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def processor_params
      params.require(:processor).permit(:brand, :name, :core_count, :core_clock, :boost_clock, :tdp, :integrated_graphics, :smt, :price)
    end
end
