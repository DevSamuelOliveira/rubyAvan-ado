#clone recebe uma herança em tempo de execução(Útil para depuração ou testes direto)
#dup duplica sem receber a herançã de metaprogramação

class Textract
    attr_accessor :documento
    def initialize()
      @documento = "texto.pdf"
    end
end

extract = Textract.new

extract2 = extract.clone

puts extract2.documento
extract2.documento = "curriculo.pdf"
puts extract2.documento

puts extract.documento

extract3 = extract2

puts extract3.documento
extract3.documento = "mudando.pdf"

puts extract.documento
puts extract3.documento
puts extract2.documento


#herdando a class de uma instancia para criar metodos com metaprogramming

nome = nil
nome2 = nil

#criado métodos com metaprogramming, nessa forma tem que chamar a instancia sempre
def nome.dev
  "Samuel Souza de Oliveira"
end

def nome.linguagem
  "Ruby"
end

def nome.editor
  "VS code"
end

puts "\n" + nome.editor

#cria métodos com metaprogramming, sem precisar chamar a intancia 
class << nome2
  def dev
  "Samuel Souza de Oliveira"
  end

  def linguagem
    "Ruby"
  end
end

puts "\n%s" % nome2.dev