class Validacao
  def setup
    @pesos = ["9", "8", "7", "6", "5", "4", "3", "2"]
    @cadastro_tamanho = 9
    @digitos_tamanho = 1
  end

  def calcular
    @digito1 =
      ((multiplicar_pesos_com_numeros_cadastro * 10) % 11) == 10 ? 0 : ((multiplicar_pesos_com_numeros_cadastro * 10) % 11)
  end
end
