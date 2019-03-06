json.extract! band, :id, :name, :best_track, :size, :from_year, :to_year, :number_of_shows, :kind, :instruments, :image, :created_at, :updated_at
json.url band_url(band, format: :json)
