json.extract! processor, :id, :brand, :name, :core_count, :core_clock, :boost_clock, :tdp, :integrated_graphics, :smt, :price, :created_at, :updated_at
json.url processor_url(processor, format: :json)
