json.extract! cour, :id, :name, :image_cours, :content, :time_learn, :created_at, :updated_at
json.url cour_url(cour, format: :json)
