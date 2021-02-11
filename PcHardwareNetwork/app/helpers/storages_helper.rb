module StoragesHelper

    def storage_gb_tb(storage)
        if storage.capacity >= 1000
            "#{storage.capacity/1000} TB"
        else
            "#{storage.capacity} GB"
        end
    end

end
