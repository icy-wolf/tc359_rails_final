json.array!(@wolves) do |wolf|
  json.extract! wolf, :id, :name, :species, :pack_rank, :pack_number, :isAlive
  json.url wolf_url(wolf, format: :json)
end
