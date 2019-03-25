json.extract! objet, :id, :title, :content, :price, :created_at, :updated_at
json.url objet_url(objet, format: :json)
