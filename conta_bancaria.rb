class ContaBancaria
  attr_reader :saldo

  def initialize(saldo)
    @saldo = saldo
  end

  def deposita(valor)
    @saldo = @saldo + valor
  end

  def saca(valor)
    if saldo >= valor
      @saldo = @saldo - valor
    else
      raise Exception, 'Saldo insuficiente'
    end
  end
end
