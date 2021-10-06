class Packet < ApplicationRecord
  enum status: {
    enviado: 0,
    en_tramite: 1,
    recibido: 2,
    cancelado: 3
  }
end
