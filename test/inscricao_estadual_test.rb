require 'test/unit'
require '../lib/validates_as_inscricao_estadual'

class EmailsTest < Test::Unit::TestCase
  def test_ac
    assert ValidacaoInscricaoEstadual::AC.new("AC", "0100482300112").valido?, "Numero valido falhou"
    assert ValidacaoInscricaoEstadual::AC.new("AC", "01.004.823/001-12").valido?, "Numero(e outros caracteres) valido falhou"
    assert ( not ValidacaoInscricaoEstadual::AC.new("AC", "0121313131312").valido? ), "Numero invalido passou"
    assert ( not ValidacaoInscricaoEstadual::AC.new("AC", "01.213.13131312a").valido? ), "Numero(e outros caracteres) invalido passou"
  end

   def test_al
     assert ValidacaoInscricaoEstadual::AL.new("AL", "240000048").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::AL.new("AL", "24000004-8").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::AL.new("AL", "134564646").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::AL.new("AL", "a13123s=-\1").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_ap
     assert ValidacaoInscricaoEstadual::AP.new("AP", "030123459").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::AP.new("AP", "03.012.345-9").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::AP.new("AP", "98132457").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::AP.new("AP", "aDS4DS5400").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_am
     ##
   end

   def test_ba
     assert ValidacaoInscricaoEstadual::BA.new("BA", "61234557").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::BA.new("BA", "612345-57").valido?, "Numero(e outros caracteres) valido falhou"
     assert ValidacaoInscricaoEstadual::BA.new("BA", "12345663").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::BA.new("BA", "123456-63").valido?, "Numero(e outros caracteres) valido falhou"
   end  

   def test_ce
     assert ValidacaoInscricaoEstadual::CE.new("CE", " 060000015").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::CE.new("CE", " 06000001-5").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::CE.new("CE", "455483548").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::CE.new("CE", "jfopw34985").valido? ), "Numero(e outros caracteres) invalido passou"
   end  

   def test_df
     assert ValidacaoInscricaoEstadual::DF.new("DF", "0730000100109").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::DF.new("DF", "07300001001-09").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::DF.new("DF", "455483548").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::DF.new("DF", "jfopw34985").valido? ), "Numero(e outros caracteres) invalido passou"
   end  

   def test_es
     assert ValidacaoInscricaoEstadual::ES.new("ES", "999999990").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::ES.new("ES", "999.999.99-0").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::ES.new("ES", "032119232").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::ES.new("ES", "JF23471").valido? ), "Numero(e outros caracteres) invalido passou"
   end  

   def test_go
     assert ValidacaoInscricaoEstadual::GO.new("GO", "109876547").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::GO.new("GO", "10.987.654-7").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::GO.new("GO", "98340581").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::GO.new("GO", "XC08VC0X8").valido? ), "Numero(e outros caracteres) invalido passou"
   end  

   def test_ma
     assert ValidacaoInscricaoEstadual::MA.new("MA", "120000385").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::MA.new("MA", "120.000.38-5").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::MA.new("MA", "98489333").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::MA.new("MA", "123L1231Ç2").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_mt
     assert ValidacaoInscricaoEstadual::MT.new("MT", "00130000019").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::MT.new("MT", "0013000001-9").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::MT.new("MT", "404004").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::MT.new("MT", "3LKKL34K1").valido? ), "Numero(e outros caracteres) invalido passou"
   end

   def test_ms
     #
   end


   def test_mg
     assert ValidacaoInscricaoEstadual::MG.new("MG", "0623079040081").valido?, "Numero valido falhou"
     assert ValidacaoInscricaoEstadual::MG.new("MG", "062.307.904/0081").valido?, "Numero(e outros caracteres) valido falhou"
     assert ( not ValidacaoInscricaoEstadual::MG.new("MG", "834038021").valido? ), "Numero invalido passou"
     assert ( not ValidacaoInscricaoEstadual::MG.new("MG", "34993934Ç").valido? ), "Numero(e outros caracteres) invalido passou"
   end

    def test_pa
      assert ValidacaoInscricaoEstadual::PA.new("PA", "159999995").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::PA.new("PA", "15999999-5").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::PA.new("PA", "404004").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::PA.new("PA", "3LKKL34K1").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_pb
      assert ValidacaoInscricaoEstadual::PB.new("PB", "060000015").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::PB.new("PB", "06000001-5").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::PB.new("PB", "127865134").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::PB.new("PB", "3AADL343K1").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_pr
      assert ValidacaoInscricaoEstadual::PR.new("PR", "1234567850").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::PR.new("PR", "123.45678-50").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::PR.new("PR", "29392323").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::PR.new("PR", "asd2OP21aPO").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_pe
      assert ValidacaoInscricaoEstadual::PE.new("PE", "18100100000049").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::PE.new("PE", "18.1.001.0000004-9").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::PE.new("PE", "219392").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::PE.new("PE", "ko312ko321okp").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_pi
      assert ValidacaoInscricaoEstadual::PI.new("PI", "012345679").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::PI.new("PI", "01234567-9").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::PI.new("PI", "092399").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::PI.new("PI", "Ç3,32,Ç.23").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_rj
      #
    end

    def test_rn
      assert ValidacaoInscricaoEstadual::RN.new("RN", "200400401").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RN.new("RN", "2000400400").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RN.new("RN", "200.400.40-1").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RN.new("RN", "200.040.040-0").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::RN.new("RN", "90349043").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::RN.new("RN", "lasdlk99349").valido? ), "Numero(e outros caracteres) invalido passou"
    end

    def test_rs
      assert ValidacaoInscricaoEstadual::RS.new("RS", "2243658792").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RS.new("RS", "224/3658792").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::RS.new("RS", "23203002").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::RS.new("RS", "KJK3JK3JLK2").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_ro
      assert ValidacaoInscricaoEstadual::RO.new("RO", "101625213").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RO.new("RO", "00000000625213").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RO.new("RO", "101/625/21-3").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RO.new("RO", "0000.000.062.521-3").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::RO.new("RO", "23288903005").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::RO.new("RO", "KyuyK3JK3JLK2").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_rr
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240066281").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240017556").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240034290").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240013603").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240082668").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240061536").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240073562").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240054674").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240041455").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "240013407").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24006628-1").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24001755-6").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24003429-0").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24001360-3").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24008266-8").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24006153-6").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24007356-2").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24005467-4").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24004145-5").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::RR.new("RR", "24001340-7").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::RR.new("RR", "12380755").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::RR.new("RR", "mcv,v9349").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_sc
      assert ValidacaoInscricaoEstadual::SC.new("SC", "251040852").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::SC.new("SC", "251.040.852").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::SC.new("SC", "94984895").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::SC.new("SC", "LK1231P3").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_sp
      assert ValidacaoInscricaoEstadual::SP.new("SP", "P011004243002").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::SP.new("SP", "110042490114").valido?, "Numero valido falhou"

      assert ValidacaoInscricaoEstadual::SP.new("SP", "P-01100424.3/002").valido?, "Numero(e outros caracteres) valido falhou"
      assert ValidacaoInscricaoEstadual::SP.new("SP", "110.042.490.114").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::SP.new("SP", "9494456566695").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::SP.new("SP", "l3klk4kl34mm").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_se
      assert ValidacaoInscricaoEstadual::SE.new("SE", "271234563").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::SE.new("SE", "27123456-3").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::SE.new("SE", "994993221").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::SE.new("SE", "CVMMNHF25").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_to
      assert ValidacaoInscricaoEstadual::TO.new("TO", "29010227836").valido?, "Numero valido falhou"
      assert ValidacaoInscricaoEstadual::TO.new("TO", "2901022783-6").valido?, "Numero(e outros caracteres) valido falhou"
      assert ( not ValidacaoInscricaoEstadual::TO.new("TO", "38094382").valido? ), "Numero invalido passou"
      assert ( not ValidacaoInscricaoEstadual::TO.new("TO", "cmkckm9345").valido? ), "Numero(e outros caracteres) invalido passou"
    end    

    def test_nada
      puts ValidacaoInscricaoEstadual.estados
    end
end
