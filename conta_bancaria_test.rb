require 'test/unit'
require 'conta_bancaria'

class ContaBancariaTeste < Test::Unit::TestCase
  def test_deposita
    conta = ContaBancaria.new(0)

    conta.deposita(100)

    assert_equal 100, conta.saldo
  end

  def test_saca
    conta = ContaBancaria.new(100)

    conta.saca(100)

    assert_equal 0, conta.saldo
  end

  def test_saca_com_saldo_insuficiente
    conta = ContaBancaria.new(100)

    assert_raises(Exception) { conta.saca(200) }
  end
end
