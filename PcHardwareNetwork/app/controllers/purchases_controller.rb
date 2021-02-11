class PurchasesController < ApplicationController
    before_action :authenticate_user!

    def new
    end

    def create
        @purchase = Purchase.new(purchase_params)

        respond_to do |format|
            if @purchase.save
                flash[:notice] = "Build added to purchased builds"
                format.html { redirect_to "/users/#{@purchase.user.id}" }
            else
                flash[:alert] = "Something went wrong"
                format.html { redirect_to "/builds/#{@purchase.build.id}", status: :unprocessable_entity }
            end
        end

    end

    private

    def purchase_params
        params.permit(:user_id, :build_id, :purchased_price)
    end

end
