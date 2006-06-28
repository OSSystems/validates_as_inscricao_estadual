require 'abstract_unit'

class EmailsTest < Test::Unit::TestCase
  def test_ac
    assert Validacao.new("AC", "0100482300112").valido?, "Numero valido falhou"
    assert Validacao.new("AC", "01.004.823/001-12").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("AC", "0121313131312").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("AC", "01.213.13131312a").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_al
    assert Validacao.new("AL", "240000048").valido?, "Numero valido falhou"
    assert Validacao.new("AL", "24000004-8").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("AL", "134564646").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("AL", "a13123s=-\1").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_ap
    assert Validacao.new("AP", "030123459").valido?, "Numero valido falhou"
    assert Validacao.new("AP", "03.012.345-9").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("AP", "98132457").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("AP", "aDS4DS5400").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_ap
    assert Validacao.new("AP", "030123459").valido?, "Numero valido falhou"
    assert Validacao.new("AP", "03.012.345-9").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("AP", "98132457").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("AP", "aDS4DS5400").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_am
    ##
  end

  def test_ba
    assert Validacao.new("BA", "61234557").valido?, "Numero valido falhou"
    assert Validacao.new("BA", "612345-57").valido?, "Numero(e outros caracteres) valido falhou"
    assert Validacao.new("BA", "12345663").valido?, "Numero valido falhou"
    assert Validacao.new("BA", "123456-63").valido?, "Numero(e outros caracteres) valido falhou"
  end  

  def test_ce
    assert Validacao.new("CE", " 060000015").valido?, "Numero valido falhou"
    assert Validacao.new("CE", " 06000001-5").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("CE", "455483548").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("CE", "jfopw34985").valido? ), "Numero(e outros caracteres) invalido passou"
  end  

  def test_df
    assert Validacao.new("DF", "0730000100109").valido?, "Numero valido falhou"
    assert Validacao.new("DF", "07300001001-09").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("DF", "455483548").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("DF", "jfopw34985").valido? ), "Numero(e outros caracteres) invalido passou"
  end  

  def test_es
    assert Validacao.new("ES", "999999990").valido?, "Numero valido falhou"
    assert Validacao.new("ES", "999.999.99-0").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("ES", "032119232").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("ES", "JF23471").valido? ), "Numero(e outros caracteres) invalido passou"
  end  

  def test_go
    assert Validacao.new("GO", "109876547").valido?, "Numero valido falhou"
    assert Validacao.new("GO", "10.987.654-7").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("GO", "98340581").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("GO", "XC08VC0X8").valido? ), "Numero(e outros caracteres) invalido passou"
  end  

  def test_ma
    assert Validacao.new("MA", "120000385").valido?, "Numero valido falhou"
    assert Validacao.new("MA", "120.000.38-5").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("MA", "98489333").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("MA", "123L1231�2").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_mt
    assert Validacao.new("MT", "00130000019").valido?, "Numero valido falhou"
    assert Validacao.new("MT", "0013000001-9").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("MT", "404004").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("MT", "3LKKL34K1").valido? ), "Numero(e outros caracteres) invalido passou"
  end

  def test_ms
    #
  end


  def test_mg
    assert a=Validacao.new("MG", "0623079040081").valido?, "Numero valido falhou"
    assert Validacao.new("MG", "062.307.904/0081").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not Validacao.new("MG", "834038021").valido? ), "Numero invalido passou"
    assert ( not Validacao.new("MG", "34993934�").valido? ), "Numero(e outros caracteres) invalido passou"
  end

   def test_pa
     assert b=Validacao.new("PA", "159999995").valido?, "Numero valido falhou"
     assert Validacao.new("PA", "15999999-5").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not Validacao.new("PA", "404004").valido? ), "Numero invalido passou"
     assert ( not Validacao.new("PA", "3LKKL34K1").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_pb
     assert b=Validacao.new("PB", "060000015").valido?, "Numero valido falhou"
     assert Validacao.new("PB", "06000001-5").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not Validacao.new("PB", "127865134").valido? ), "Numero invalido passou"
     assert ( not Validacao.new("PB", "3AADL343K1").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_pr
     assert Validacao.new("PR", "1234567850").valido?, "Numero valido falhou"
     assert Validacao.new("PR", "123.45678-50").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not Validacao.new("PR", "29392323").valido? ), "Numero invalido passou"
     assert ( not Validacao.new("PR", "asd2OP21aPO").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_pe
     assert Validacao.new("PE", "18100100000049").valido?, "Numero valido falhou"
     assert Validacao.new("PE", "18.1.001.0000004-9").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not Validacao.new("PE", "219392").valido? ), "Numero invalido passou"
     assert ( not Validacao.new("PE", "ko312ko321okp").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_pi
     assert Validacao.new("PI", "012345679").valido?, "Numero valido falhou"
     assert Validacao.new("PI", "01234567-9").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not Validacao.new("PI", "092399").valido? ), "Numero invalido passou"
     assert ( not Validacao.new("PI", "�3,32,�.23").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_rj
     #
   end

   def test_rn
     assert Validacao.new("RN", "2000400400").valido?, "Numero valido falhou"
#     assert Validacao.new("RN", "20.0.040.040-0").valido?, "Numero(e outros caracteres) valido falhou"
 #    assert ( not Validacao.new("RN", "90349043").valido? ), "Numero invalido passou"
  #   assert ( not Validacao.new("RN", "lasdlk99349").valido? ), "Numero(e outros caracteres) invalido passou"
   end
end
