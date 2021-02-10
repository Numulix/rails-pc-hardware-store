module BuildsHelper

    def total_price(build)
        build.processor.price + build.processor_cooler.price + build.video_card.price + build.memory.price + build.storage.price + build.power_supply.price + build.motherboard.price + build.pc_case.price
    end

end
