class Validacao
  attr_reader :pesos
  attr_reader :cadastro
  attr_reader :cadastro_tamanho
  attr_reader :digitos_tamanho

  def initialize(classe, cadastro)
    begin 
      require "#{classe}"
      @cadastro = cadastro.scan(/[0-9]/).collect{|x| x.to_i}
      @uf = classe
#puts @cadastro.inspect if @uf == "RN"
      setup
      validar_formato
      calcular

    rescue LoadError
      puts "Classe nao encontrada"
      exit
    end
  end

  private
  def validar
#puts "ae" if @uf == "PB"
#puts @uf
    t = 0
#puts @digitos_tamanho if @uf == "AC"
    1.upto(@digitos_tamanho) do |i|
#puts "bosta" if @uf == "DF"
      eval <<-EOF
#puts @digito#{i} if @uf == "PB"
#puts  @cadastro[@cadastro.length-i] if @uf == "PB"
#puts "----" if @uf == "PB"
      if @digito#{i}.to_i ==  @cadastro[@cadastro.length-i].to_i 
        t += 1
      end
      EOF
    end

    if t == @digitos_tamanho
      return true
    else
      return false
    end
  end

  private
  def validar_formato
    if @cadastro.to_s.length > @cadastro_tamanho
      puts "Numero de inscricao estadual muito grande"
      exit
    end
  end

  private
  def multiplicar_pesos_com_numeros_cadastro(cadastro = @cadastro.clone, pesos = @pesos, tamanho = @digitos_tamanho)
    soma = 0
    cadastro = cadastro.clone

    0.upto(cadastro.length - tamanho) do |i|
      soma += pesos[i].to_i * cadastro[i].to_i
    end

    soma
  end

  public
  def valido?
    return validar
  end
end


#puts v.valido?

module ActiveRecord
  module Validations
    module ClassMethods
      def validates_as_inscricao_estadual(*attr_names)
        configuration = { :message => "is invalid" }
        configuration.update(attr_names.pop) if attr_names.last.is_a?(Hash)
 	
        validates_each(attr_names, configuration) do |record, attr_name, value|
          next if value.blank?
          
          unless ValidacaoInscricaoEstadual.new(value, configuration[:UF]).valido?
            record.errors.add(attr_name, configuration[:message])
          end
        end
      end
    end
  end
end
