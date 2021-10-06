json.extract! packet, :id, :name, :weight, :status, :created_at, :updated_at
json.url packet_url(packet, format: :json)
