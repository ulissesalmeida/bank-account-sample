require 'test/unit'
require 'conta_bancaria'
require 'transferencia'

class TransferenciaTest < Test::Unit::TestCase
  def test_transferencia
    conta_origem = ContaBancaria.new(150)
    conta_destino = ContaBancaria.new(200)

    transferencia = Transferencia.new(
      conta_origem,
      conta_destino
    )

    transferencia.transfere(50)

    assert_equal 100, conta_origem.saldo
    assert_equal 250, conta_destino.saldo
  end

  def test_transferencia_origem_sem_saldo
    conta_origem = ContaBancaria.new(150)
    conta_destino = ContaBancaria.new(200)

    transferencia = Transferencia.new(
      conta_origem,
      conta_destino
    )

    assert !transferencia.transfere(200)

    assert_equal 150, conta_origem.saldo
    assert_equal 200, conta_destino.saldo
  end
end
