class BuildsController < ApplicationController
    before_action :set_build, only: %i[ show edit update destroy ]
    before_action :authenticate_user!, only: %i[ new edit ]

    def index
        @builds = Build.all
    end

    def show
    end

    def new
        @build = current_user.builds.build
        @processors = Processor.all.map { |p| [p.name, p.id] }
        @processor_coolers = ProcessorCooler.all.map { |p| [p.name, p.id] }
        @video_cards = VideoCard.all.map { |p| [p.name, p.id] }
        @memories = Memory.all.map { |p| [p.name, p.id] }
        @motherboards = Motherboard.all.map { |p| [p.name, p.id] }
        @power_supplies = PowerSupply.all.map { |p| [p.name, p.id] }
        @storages = Storage.all.map { |p| [p.name, p.id] }
        @cases = Case.all.map { |p| [p.name, p.id] }
    end

    def edit
    end

    def create
        @build = Build.new(build_params)
        @build.user_id = current_user.id
        @build.processor_id = params[:processor_id]
        @build.processor_cooler_id = params[:processor_cooler_id]
        @build.video_card_id = params[:video_card_id]
        @build.memory_id = params[:memory_id]
        @build.motherboard_id = params[:motherboard_id]
        @build.power_supply_id = params[:power_supply_id]
        @build.storage_id = params[:storage_id]
        @build.case_id = params[:case_id]

        respond_to do |format|
            if @build.save
                format.html { redirect_to @build, notice: "Build was successfully created." }
                format.json { render :show, status: :created, location: @build }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @build.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @build.destroy
        respond_to do |format|
            format.html { redirect_to builds_url, notice: "Build was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
    
        def set_build
            @build = Build.find(params[:id])
        end

        def build_params
            params.require(:build).permit(:name, :processor_id, :processor_cooler_id, :video_card_id, :memory_id, :motherboard_id, :power_supply_id, :storage_id, :case_id)
        end
end
