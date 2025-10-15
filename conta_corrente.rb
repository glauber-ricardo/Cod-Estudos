require_relative 'conta'

class Conta_Corrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
   super(numero, titular, saldo)
   @limite = limite
  end

  def sacar(valor)
    if (saldo + limite) >= valor
    self.saldo -= valor
    else
      puts "Não foi possível executar o saque, sem money"
    end
  end
end

