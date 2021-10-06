class Packet < ApplicationRecord
  belongs_to :deliverer, class_name: 'User', foreign_key: :user_id
  enum status: {
    enviado: 0,
    en_tramite: 1,
    recibido: 2,
    cancelado: 3
  }
end
