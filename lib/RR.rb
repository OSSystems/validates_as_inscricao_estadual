class Validacao
  def setup
    @pesos = ["1", "2", "3", "4", "5", "6", "7", "8"]
    @cadastro_tamanho = 9
    @digitos_tamanho = 1
  end

  def validar
    digito1 = multiplicar_pesos_com_numeros_cadastro % 9
  end
end

