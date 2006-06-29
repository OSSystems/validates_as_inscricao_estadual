class Validacao
  private
  def validar_formato
  end

  def setup
    @pesos = ["1", "3", "4", "5", "6", "7", "8", "10"]
    @pesos2 = ["3", "2", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
    @pesos3 = ["1", "3", "4", "5", "6", "7", "8", "10"]
    
    @rural = false

    if @cadastro.to_s =~ /^P*/
      @rural = true
    end
  end

  def validar
    if not @rural
      resto = multiplicar_pesos_com_numeros_cadastro(@cadastro, @pesos, 0) % 11
      digito1 = resto.to_s[resto.to_s.length-1].chr

      resto = multiplicar_pesos_com_numeros_cadastro(@cadastro, @pesos2, 0) % 11
      digito2 = resto.to_s[resto.to_s.length-1].chr
    else
      cad = @cadastro[@cadastro.index(0)..@cadastro.length]
      cad = cad[0..cad.length-4]

      resto = multiplicar_pesos_com_numeros_cadastro(cad, @pesos3, 0) % 11
      digito1 = resto.to_s[resto.to_s.length-1].chr
    end
  end
end
