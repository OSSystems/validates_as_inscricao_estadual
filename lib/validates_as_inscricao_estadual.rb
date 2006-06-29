$:.unshift(File.dirname(__FILE__) + '/')

module ValidacaoInscricaoEstadual
  class Base
    attr_reader :pesos
    attr_reader :cadastro
    attr_reader :cadastro_tamanho
    attr_reader :digitos_tamanho

    def initialize(classe, cadastro)
      begin 
        @cadastro = cadastro.scan(/[0-9]/).collect{|x| x.to_i}
        @uf = classe

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
      acertos = 0
      1.upto(@digitos_tamanho) do |i|
        eval <<-EOF
        if @digito#{i}.to_i ==  @cadastro[@cadastro.length-i].to_i 
          acertos += 1
        end
        EOF
      end

      if acertos == @digitos_tamanho
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

  def self.estados
    @estados ||= []
  end
  
  def self.registrar_estado(estado)
    estados.push(estado) if not estados.include?(estado)
  end
end

require 'AC'
require 'AL'
require 'AP'
require 'BA'
require 'CE'
require 'DF'
require 'ES'
require 'GO'
require 'MA'
require 'MT'
require 'MG'
require 'PA'
require 'PB'
require 'PR'
require 'PE'
require 'PI'
require 'RJ'
require 'RN'
require 'RS'
require 'RO'
require 'RR'
require 'SC'
require 'SP'
require 'SE'
require 'TO'

module ActiveRecord
  module Validations
    module ClassMethods
      def validates_as_inscricao_estadual(*attr_names)
        configuration = { :message => "is invalid" }
        configuration.update(attr_names.pop) if attr_names.last.is_a?(Hash)
 	
        validates_each(attr_names, configuration) do |record, attr_name, value|
          next if value.blank?
          
          ValidacaoInscricaoEstadual.estados.each do |estado|
            eval <<-EOF
            if ValidacaoInscricaoEstadual::#{estado}.new(estado, value).valido?
              valido = true
              break
            end
            EOF
          end
            
          unless valido
            record.errors.add(attr_name, configuration[:message])
          end
        end
      end
    end
  end
end
