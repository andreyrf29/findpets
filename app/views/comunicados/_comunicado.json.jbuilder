json.extract! comunicado, :id, :nome, :telefone, :informacoes, :created_at, :updated_at
json.url comunicado_url(comunicado, format: :json)
