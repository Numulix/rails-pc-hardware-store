class VideoCardsController < ApplicationController
  before_action :set_video_card, only: %i[ show edit update destroy ]

  # GET /video_cards or /video_cards.json
  def index
    @video_cards = VideoCard.all
  end

  # GET /video_cards/1 or /video_cards/1.json
  def show
  end

  # GET /video_cards/new
  def new
    @video_card = VideoCard.new
  end

  # GET /video_cards/1/edit
  def edit
  end

  # POST /video_cards or /video_cards.json
  def create
    @video_card = VideoCard.new(video_card_params)

    respond_to do |format|
      if @video_card.save
        format.html { redirect_to @video_card, notice: "Video card was successfully created." }
        format.json { render :show, status: :created, location: @video_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_cards/1 or /video_cards/1.json
  def update
    respond_to do |format|
      if @video_card.update(video_card_params)
        format.html { redirect_to @video_card, notice: "Video card was successfully updated." }
        format.json { render :show, status: :ok, location: @video_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_cards/1 or /video_cards/1.json
  def destroy
    @video_card.destroy
    respond_to do |format|
      format.html { redirect_to video_cards_url, notice: "Video card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_card
      @video_card = VideoCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_card_params
      params.require(:video_card).permit(:brand, :name, :chipset, :memory, :core_clock, :boost_clock, :color, :length, :price)
    end
end
