class Transferencia
  def initialize(conta_origem, conta_destino)
    @conta_origem = conta_origem
    @conta_destino = conta_destino
  end

  def transfere(valor)
    @conta_origem.saca(valor)
    @conta_destino.deposita(valor)

  rescue Exception
    false
  end
end
