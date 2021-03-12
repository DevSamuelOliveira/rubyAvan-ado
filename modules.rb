module Validates

  def self.func2
  "Este é um modulo para validações"
  end

  def func
    "Este é um modulo para validações"
  end

  class Cpf
    def validade_cpf()
      "CPF validado"
    end
  end
  
  class Cnpf
    def validar_cnpf()
      "Cnpj validado"
    end
  end
end

puts Validates.func2

validecpf = Validates::Cpf.new

puts validecpf.validade_cpf

class Usuario
  include Validates
end

puts Usuario.new.func