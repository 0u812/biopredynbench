<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.11 (Build 65) (http://www.copasi.org) at 2014-07-03 08:43:32 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="11" versionDevel="65" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_7" name="Constant flux (reversible)" type="PreDefined" reversible="true">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="function_4_vALDO" type="UserDefined" reversible="true">
      <Expression>
        rmaxALDO*(cfdp-cgap*cdhap/kALDOeq)/(kALDOfdp+cfdp+kALDOgap*cdhap/(kALDOeq*VALDOblf)+kALDOdhap*cgap/(kALDOeq*VALDOblf)+cfdp*cgap/kALDOgapinh+cgap*cdhap/(VALDOblf*kALDOeq))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="VALDOblf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="cdhap" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_254" name="cfdp" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_258" name="cgap" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="kALDOdhap" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="kALDOeq" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="kALDOfdp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="kALDOgap" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kALDOgapinh" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="rmaxALDO" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_vDAHPS" type="UserDefined" reversible="true">
      <Expression>
        rmaxDAHPS*ce4p^nDAHPSe4p*cpep^nDAHPSpep/((KDAHPSe4p+ce4p^nDAHPSe4p)*(KDAHPSpep+cpep^nDAHPSpep))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="KDAHPSe4p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="KDAHPSpep" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="ce4p" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="cpep" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="nDAHPSe4p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="nDAHPSpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="rmaxDAHPS" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_vDHAP" type="UserDefined" reversible="true">
      <Expression>
        mu*cdhap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="cdhap" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_vE4P" type="UserDefined" reversible="true">
      <Expression>
        mu*ce4p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="ce4p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_vENO" type="UserDefined" reversible="true">
      <Expression>
        rmaxENO*(cpg2-cpep/KENOeq)/(KENOpg2*(1+cpep/KENOpep)+cpg2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="KENOeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="KENOpep" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="KENOpg2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="cpep" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_277" name="cpg2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="rmaxENO" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_vEXTER" type="UserDefined" reversible="true">
      <Expression>
        Dil*(cfeed-cglcex)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="Dil" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="cfeed" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="cglcex" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_vG1PAT" type="UserDefined" reversible="true">
      <Expression>
        rmaxG1PAT*cg1p*catp*(1+(cfdp/KG1PATfdp)^nG1PATfdp)/((KG1PATatp+catp)*(KG1PATg1p+cg1p))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="KG1PATatp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="KG1PATfdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="KG1PATg1p" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="catp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="cfdp" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="cg1p" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="nG1PATfdp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="rmaxG1PAT" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_vG3PDH" type="UserDefined" reversible="true">
      <Expression>
        rmaxG3PDH*cdhap/(KG3PDHdhap+cdhap)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="KG3PDHdhap" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="cdhap" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="rmaxG3PDH" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_vG6P" type="UserDefined" reversible="true">
      <Expression>
        mu*cg6p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="cg6p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_vG6PDH" type="UserDefined" reversible="unspecified">
      <Expression>
        rmaxG6PDH*cg6p*cnadp/((cg6p+KG6PDHg6p)*(1+cnadph/KG6PDHnadphg6pinh)*(KG6PDHnadp*(1+cnadph/KG6PDHnadphnadpinh)+cnadp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_309" name="KG6PDHg6p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="KG6PDHnadp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="KG6PDHnadphg6pinh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="KG6PDHnadphnadpinh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="cg6p" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="cnadp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="cnadph" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="rmaxG6PDH" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_vGAP" type="UserDefined" reversible="true">
      <Expression>
        mu*cgap
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="cgap" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_318" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_vGAPDH" type="UserDefined" reversible="true">
      <Expression>
        rmaxGAPDH*(cgap*cnad-cpgp*cnadh/KGAPDHeq)/((KGAPDHgap*(1+cpgp/KGAPDHpgp)+cgap)*(KGAPDHnad*(1+cnadh/KGAPDHnadh)+cnad))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="KGAPDHeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="KGAPDHgap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="KGAPDHnad" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="KGAPDHnadh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="KGAPDHpgp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="cgap" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="cnad" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="cnadh" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="cpgp" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="rmaxGAPDH" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_vGLP" type="UserDefined" reversible="true">
      <Expression>
        mu*cg1p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="cg1p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_vPDH" type="UserDefined" reversible="true">
      <Expression>
        rmaxPDH*cpyr^nPDH/(KPDHpyr+cpyr^nPDH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="KPDHpyr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="cpyr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="nPDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="rmaxPDH" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_vPEP" type="UserDefined" reversible="true">
      <Expression>
        mu*cpep
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="cpep" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_vPFK" type="UserDefined" reversible="unspecified">
      <Expression>
        rmaxPFK*catp*cf6p/((catp+KPFKatps*(1+cadp/KPFKadpc))*(cf6p+KPFKf6ps*(1+cpep/KPFKpep+cadp/KPFKadpb+camp/KPFKampb)/(1+cadp/KPFKadpa+camp/KPFKampa))*(1+LPFK/(1+cf6p*(1+cadp/KPFKadpa+camp/KPFKampa)/(KPFKf6ps*(1+cpep/KPFKpep+cadp/KPFKadpb+camp/KPFKampb)))^nPFK))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="KPFKadpa" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="KPFKadpb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="KPFKadpc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="KPFKampa" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="KPFKampb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="KPFKatps" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="KPFKf6ps" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="KPFKpep" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="LPFK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="cadp" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="camp" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="catp" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="cf6p" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="cpep" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_361" name="nPFK" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="rmaxPFK" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_vPG" type="UserDefined" reversible="true">
      <Expression>
        mu*cpg
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="cpg" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_vPG3" type="UserDefined" reversible="true">
      <Expression>
        mu*cpg3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="cpg3" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_vPGDH" type="UserDefined" reversible="unspecified">
      <Expression>
        rmaxPGDH*cpg*cnadp/((cpg+KPGDHpg)*(cnadp+KPGDHnadp*(1+cnadph/KPGDHnadphinh)*(1+catp/KPGDHatpinh)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="KPGDHatpinh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="KPGDHnadp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="KPGDHnadphinh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="KPGDHpg" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="catp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="cnadp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="cnadph" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="cpg" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="rmaxPGDH" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_vPGI" type="UserDefined" reversible="true">
      <Expression>
        rmaxPGI*(cg6p-cf6p/KPGIeq)/(KPGIg6p*(1+cf6p/(KPGIf6p*(1+cpg/KPGIf6ppginh))+cpg/KPGIg6ppginh)+cg6p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="KPGIeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="KPGIf6p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="KPGIf6ppginh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="KPGIg6p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="KPGIg6ppginh" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="cf6p" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_364" name="cg6p" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="cpg" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="rmaxPGI" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_vPGK" type="UserDefined" reversible="true">
      <Expression>
        rmaxPGK*(cadp*cpgp-catp*cpg3/KPGKeq)/((KPGKadp*(1+catp/KPGKatp)+cadp)*(KPGKpgp*(1+cpg3/KPGKpg3)+cpgp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="KPGKadp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="KPGKatp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="KPGKeq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="KPGKpg3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="KPGKpgp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="cadp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="catp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="cpg3" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_369" name="cpgp" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="rmaxPGK" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_vPGM" type="UserDefined" reversible="true">
      <Expression>
        rmaxPGM*(cg6p-cg1p/KPGMeq)/(KPGMg6p*(1+cg1p/KPGMg1p)+cg6p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="KPGMeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="KPGMg1p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="KPGMg6p" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="cg1p" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_384" name="cg6p" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="rmaxPGM" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_vPGP" type="UserDefined" reversible="true">
      <Expression>
        mu*cpgp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="cpgp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_vPK" type="UserDefined" reversible="unspecified">
      <Expression>
        rmaxPK*cpep*(cpep/KPKpep+1)^(nPK-1)*cadp/(KPKpep*(LPK*((1+catp/KPKatp)/(cfdp/KPKfdp+camp/KPKamp+1))^nPK+(cpep/KPKpep+1)^nPK)*(cadp+KPKadp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="KPKadp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="KPKamp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="KPKatp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="KPKfdp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="KPKpep" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="LPK" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="cadp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="camp" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="catp" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="cfdp" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_382" name="cpep" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="nPK" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="rmaxPK" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_vPPK" type="UserDefined" reversible="true">
      <Expression>
        rmaxRPPK*crib5p/(KRPPKrib5p+crib5p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="KRPPKrib5p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="crib5p" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="rmaxRPPK" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_vPTS" type="UserDefined" reversible="true">
      <Expression>
        extracellular*rmaxPTS*cglcex*(cpep/cpyr)/((KPTSa1+KPTSa2*(cpep/cpyr)+KPTSa3*cglcex+cglcex*(cpep/cpyr))*(1+cg6p^nPTSg6p/KPTSg6p))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="KPTSa1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="KPTSa2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="KPTSa3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="KPTSg6p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="cg6p" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_398" name="cglcex" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="cpep" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="cpyr" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_402" name="extracellular" order="8" role="volume"/>
        <ParameterDescription key="FunctionParameter_421" name="nPTSg6p" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="rmaxPTS" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_vR5PI" type="UserDefined" reversible="true">
      <Expression>
        rmaxR5PI*(cribu5p-crib5p/KR5PIeq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="KR5PIeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="crib5p" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_420" name="cribu5p" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_424" name="rmaxR5PI" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_vRIB5P" type="UserDefined" reversible="true">
      <Expression>
        mu*crib5p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="crib5p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_392" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_vRibu5p" type="UserDefined" reversible="true">
      <Expression>
        mu*cribu5p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="cribu5p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_422" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_vRu5P" type="UserDefined" reversible="true">
      <Expression>
        rmaxRu5P*(cribu5p-cxyl5p/KRu5Peq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="KRu5Peq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="cribu5p" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_426" name="cxyl5p" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_400" name="rmaxRu5P" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_vSED7P" type="UserDefined" reversible="true">
      <Expression>
        mu*csed7p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_425" name="csed7p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_vSynth1" type="UserDefined" reversible="true">
      <Expression>
        rmaxSynth1*cpep/(KSynth1pep+cpep)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="KSynth1pep" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="cpep" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="rmaxSynth1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_vSynth2" type="UserDefined" reversible="true">
      <Expression>
        rmaxSynth2*cpyr/(KSynth2pyr+cpyr)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_435" name="KSynth2pyr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="cpyr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="rmaxSynth2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_vTA" type="UserDefined" reversible="true">
      <Expression>
        rmaxTA*(cgap*csed7p-ce4p*cf6p/KTAeq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_444" name="KTAeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="ce4p" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_442" name="cf6p" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_431" name="cgap" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="csed7p" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_436" name="rmaxTA" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_vTIS" type="UserDefined" reversible="true">
      <Expression>
        rmaxTIS*(cdhap-cgap/kTISeq)/(kTISdhap*(1+cgap/kTISgap)+cdhap)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="cdhap" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_437" name="cgap" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_448" name="kTISdhap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="kTISeq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="kTISgap" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="rmaxTIS" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_vTKA" type="UserDefined" reversible="true">
      <Expression>
        rmaxTKa*(crib5p*cxyl5p-csed7p*cgap/KTKaeq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="KTKaeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="cgap" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_447" name="crib5p" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="csed7p" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_439" name="cxyl5p" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_451" name="rmaxTKa" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_vTKB" type="UserDefined" reversible="true">
      <Expression>
        rmaxTKb*(cxyl5p*ce4p-cf6p*cgap/KTKbeq)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="KTKbeq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="ce4p" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_458" name="cf6p" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_460" name="cgap" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="cxyl5p" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_457" name="rmaxTKb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_vXYL5P" type="UserDefined" reversible="true">
      <Expression>
        mu*cxyl5p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_459" name="cxyl5p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_463" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_vf6P" type="UserDefined" reversible="true">
      <Expression>
        mu*cf6p
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="cf6p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_449" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_vfdP" type="UserDefined" reversible="true">
      <Expression>
        mu*cfdp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_464" name="cfdp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_vpepCxylase" type="UserDefined" reversible="true">
      <Expression>
        rmaxpepCxylase*cpep*(1+(cfdp/KpepCxylasefdp)^npepCxylasefdp)/(KpepCxylasepep+cpep)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_470" name="KpepCxylasefdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="KpepCxylasepep" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="cfdp" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_466" name="cpep" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_472" name="npepCxylasefdp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="rmaxpepCxylase" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_vpg2" type="UserDefined" reversible="true">
      <Expression>
        mu*cpg2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="cpg2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_475" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_vpyr" type="UserDefined" reversible="true">
      <Expression>
        mu*cpyr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_467" name="cpyr" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_469" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_vrpGluMu" type="UserDefined" reversible="true">
      <Expression>
        rmaxPGluMu*(cpg3-cpg2/KPGluMueq)/(KPGluMupg3*(1+cpg2/KPGluMupg2)+cpg3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_480" name="KPGluMueq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="KPGluMupg2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="KPGluMupg3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="cpg2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_476" name="cpg3" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="rmaxPGluMu" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_vsersynth" type="UserDefined" reversible="true">
      <Expression>
        rmaxSerSynth*cpg3/(KSerSynthpg3+cpg3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_477" name="KSerSynthpg3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="cpg3" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_485" name="rmaxSerSynth" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="chassagnole" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/17590932"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-05T12:00:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>kieran.smallbone@manchester.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Smallbone</vCard:Family>
                <vCard:Given>Kieran</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Manchester</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-05T14:31:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000051"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/562"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytosol" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="extracellular" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0005576" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="cdhap" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00111" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16108" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cdhap_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="ce4p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:48153" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00279" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[ce4p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="cf6p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C05345" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00085" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:15946" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cf6p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="cfdp" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00354" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16905" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cfdp_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="cg1p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00103" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16077" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cg1p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cg6p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00668" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17665" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cg6p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="cgap" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00661" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17138" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cgap_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="cpep" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00074" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:18021" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpep_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="cpg" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00345" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16863" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpg_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="cpg2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00631" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17835" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpg2_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="cpg3" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00197" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17794" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpg3_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="cpgp" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00236" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16001" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpgp_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="cpyr" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00022" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:15361" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cpyr_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="crib5p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00117" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17797" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[crib5p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="cribu5p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00199" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17363" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cribu5p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="csed7p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00281" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:15721" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[csed7p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="cxyl5p" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00231" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:16332" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cxyl5p_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="cglcex" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:4167" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00031" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00293" />
        <rdf:li rdf:resource="http://identifiers.org/obo.chebi/CHEBI:17234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=chassagnole,Vector=Values[cglcex_init],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="cdhap_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="ce4p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="cfeed" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="cpg2_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="cpg3_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="cpgp_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="crib5p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="cribu5p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="csed7p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="cxyl5p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kALDOdhap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kALDOeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kALDOfdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kALDOgap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kALDOgapinh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="KDAHPSe4p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="KDAHPSpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="KENOeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="KENOpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="KENOpg2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="KG1PATatp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="KG1PATfdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="KG1PATg1p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="KG3PDHdhap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KG6PDHg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="KG6PDHnadp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="KG6PDHnadphg6pinh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="KG6PDHnadphnadpinh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="KGAPDHeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="KGAPDHgap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="KGAPDHnad" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="KGAPDHnadh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="KGAPDHpgp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="KPDHpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="KpepCxylasefdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="KpepCxylasepep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="KPFKadpa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="KPFKadpb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="KPFKadpc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="KPFKampa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="KPFKampb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="KPFKatps" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="KPFKf6ps" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="KPFKpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="KPGDHatpinh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="KPGDHnadp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="KPGDHnadphinh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="KPGDHpg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="KPGIeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="KPGIf6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="KPGIf6ppginh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="KPGIg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="KPGIg6ppginh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="KPGKadp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="KPGKatp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="KPGKeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="KPGKpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="KPGKpgp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="KPGluMueq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="KPGluMupg2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="KPGluMupg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="KPGMeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="KPGMg1p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="KPGMg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="KPKadp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="KPKamp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="KPKatp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="KPKfdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="KPKpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="KPTSa1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="KPTSa2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="KPTSa3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="KPTSg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="KR5PIeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="KRPPKrib5p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="KRu5Peq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="KSerSynthpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="KSynth1pep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="KSynth2pyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="KTAeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="kTISdhap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kTISeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kTISgap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="KTKaeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="KTKbeq" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="LPFK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="LPK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="nDAHPSe4p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="nDAHPSpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="nG1PATfdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="nPDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="npepCxylasefdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="nPFK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="nPK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="nPTSg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="rmaxALDO" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="rmaxDAHPS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="rmaxENO" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="rmaxG1PAT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="rmaxG3PDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="rmaxG6PDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="rmaxGAPDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="rmaxMetSynth" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="rmaxMurSynth" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="rmaxPDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="rmaxpepCxylase" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="rmaxPFK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="rmaxPGDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="rmaxPGI" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="rmaxPGK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="rmaxPGluMu" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="rmaxPGM" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="rmaxPK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="rmaxPTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="rmaxR5PI" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="rmaxRPPK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="rmaxRu5P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="rmaxSerSynth" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="rmaxSynth1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="rmaxSynth2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="rmaxTA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="rmaxTIS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="rmaxTKa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="rmaxTKb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="rmaxTrpSynth" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="VALDOblf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="cf6p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="cfdp_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="cg1p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="cg6p_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="cgap_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="cglcex_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="cpep_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="cpg_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="cpyr_init" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="Dil" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="mu" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="cadp" simulationType="assignment">
        <Expression>
          0.582+1.73*2.731^(-0.15*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;)*(0.12*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+0.000214*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="camp" simulationType="assignment">
        <Expression>
          0.123+7.25*(&lt;CN=Root,Model=chassagnole,Reference=Time&gt;/(7.25+1.47*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+0.17*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^2))+1.073/(1.29+8.05*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="catp" simulationType="assignment">
        <Expression>
          4.27-4.163*(&lt;CN=Root,Model=chassagnole,Reference=Time&gt;/(0.657+1.43*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+0.0364*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="cnad" simulationType="assignment">
        <Expression>
          1.314+1.314*2.73^(-0.0435*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;-0.342)-(&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+7.871)*(2.73^(-0.0218*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;-0.171)/(8.481+&lt;CN=Root,Model=chassagnole,Reference=Time&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="cnadh" simulationType="assignment">
        <Expression>
          0.0934+0.00111*2.371^(-0.123*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;)*(0.844*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+0.104*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^3)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="cnadp" simulationType="assignment">
        <Expression>
          0.159-0.00554*(&lt;CN=Root,Model=chassagnole,Reference=Time&gt;/(2.8-0.271*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;+0.01*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^2))+0.182/(4.82+0.526*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="cnadph" simulationType="assignment">
        <Expression>
          0.062+0.332*2.718^(-0.464*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;)*(0.0166*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^1.58+0.000166*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^4.73+0.1312*10^(-9)*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^7.89+0.1362*10^(-12)*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^11+0.1233*10^(-15)*&lt;CN=Root,Model=chassagnole,Reference=Time&gt;^14.2)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="vALDO" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01070" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1602" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.1.2.13" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1597" name="VALDOblf" value="1"/>
          <Constant key="Parameter_1596" name="kALDOdhap" value="1"/>
          <Constant key="Parameter_1595" name="kALDOeq" value="1"/>
          <Constant key="Parameter_1594" name="kALDOfdp" value="1"/>
          <Constant key="Parameter_1593" name="kALDOgap" value="1"/>
          <Constant key="Parameter_1592" name="kALDOgapinh" value="1"/>
          <Constant key="Parameter_1591" name="rmaxALDO" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="vDAHPS" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01826" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.5.1.54" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1590" name="KDAHPSe4p" value="1"/>
          <Constant key="Parameter_1589" name="KDAHPSpep" value="1"/>
          <Constant key="Parameter_1588" name="nDAHPSe4p" value="1"/>
          <Constant key="Parameter_1587" name="nDAHPSpep" value="1"/>
          <Constant key="Parameter_1586" name="rmaxDAHPS" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="vDHAP" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1585" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="vE4P" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1584" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="vENO" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00658" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1400" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.2.1.11" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1583" name="KENOeq" value="1"/>
          <Constant key="Parameter_1582" name="KENOpep" value="1"/>
          <Constant key="Parameter_1581" name="KENOpg2" value="1"/>
          <Constant key="Parameter_1580" name="rmaxENO" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="vEXTER" reversible="true">
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1579" name="Dil" value="1"/>
          <Constant key="Parameter_1578" name="cfeed" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="vG1PAT" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00948" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.27" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1577" name="KG1PATatp" value="1"/>
          <Constant key="Parameter_1576" name="KG1PATfdp" value="1"/>
          <Constant key="Parameter_1575" name="KG1PATg1p" value="1"/>
          <Constant key="Parameter_1574" name="catp" value="1"/>
          <Constant key="Parameter_1573" name="nG1PATfdp" value="1"/>
          <Constant key="Parameter_1572" name="rmaxG1PAT" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="vG3PDH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00842" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_16938" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.8" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1571" name="KG3PDHdhap" value="1"/>
          <Constant key="Parameter_1570" name="rmaxG3PDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="vG6P" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1569" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="vG6PDH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00835" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02035" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.49" />
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.1.1.31" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1568" name="KG6PDHg6p" value="1"/>
          <Constant key="Parameter_1567" name="KG6PDHnadp" value="1"/>
          <Constant key="Parameter_1566" name="KG6PDHnadphg6pinh" value="1"/>
          <Constant key="Parameter_1565" name="KG6PDHnadphnadpinh" value="1"/>
          <Constant key="Parameter_1564" name="cnadp" value="1"/>
          <Constant key="Parameter_1563" name="cnadph" value="1"/>
          <Constant key="Parameter_1562" name="rmaxG6PDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="vGAP" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0019683" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1561" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="vGAPDH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01061" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1847" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.2.1.12" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1560" name="KGAPDHeq" value="1"/>
          <Constant key="Parameter_1559" name="KGAPDHgap" value="1"/>
          <Constant key="Parameter_1558" name="KGAPDHnad" value="1"/>
          <Constant key="Parameter_1557" name="KGAPDHnadh" value="1"/>
          <Constant key="Parameter_1556" name="KGAPDHpgp" value="1"/>
          <Constant key="Parameter_1555" name="cnad" value="1"/>
          <Constant key="Parameter_1554" name="cnadh" value="1"/>
          <Constant key="Parameter_1553" name="rmaxGAPDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="vGLP" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1552" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="vMURSyNTH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006002" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1551" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_7">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="vMethSynth" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0042866" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1550" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_7">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="vPDH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00209" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/rn00620" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.2.1.51" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1549" name="KPDHpyr" value="1"/>
          <Constant key="Parameter_1548" name="nPDH" value="1"/>
          <Constant key="Parameter_1547" name="rmaxPDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="vPEP" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0046395" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1546" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="vPFK" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00756" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_736" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.11" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1545" name="KPFKadpa" value="1"/>
          <Constant key="Parameter_1544" name="KPFKadpb" value="1"/>
          <Constant key="Parameter_1543" name="KPFKadpc" value="1"/>
          <Constant key="Parameter_1542" name="KPFKampa" value="1"/>
          <Constant key="Parameter_1541" name="KPFKampb" value="1"/>
          <Constant key="Parameter_1540" name="KPFKatps" value="1"/>
          <Constant key="Parameter_1539" name="KPFKf6ps" value="1"/>
          <Constant key="Parameter_1538" name="KPFKpep" value="1"/>
          <Constant key="Parameter_1537" name="LPFK" value="1"/>
          <Constant key="Parameter_1536" name="cadp" value="1"/>
          <Constant key="Parameter_1535" name="camp" value="1"/>
          <Constant key="Parameter_1534" name="catp" value="1"/>
          <Constant key="Parameter_1533" name="nPFK" value="1"/>
          <Constant key="Parameter_1532" name="rmaxPFK" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="vPG" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1531" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="vPG3" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1530" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="vPGDH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01528" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_611" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/1.1.1.44" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1529" name="KPGDHatpinh" value="1"/>
          <Constant key="Parameter_1528" name="KPGDHnadp" value="1"/>
          <Constant key="Parameter_1527" name="KPGDHnadphinh" value="1"/>
          <Constant key="Parameter_1526" name="KPGDHpg" value="1"/>
          <Constant key="Parameter_1525" name="catp" value="1"/>
          <Constant key="Parameter_1524" name="cnadp" value="1"/>
          <Constant key="Parameter_1523" name="cnadph" value="1"/>
          <Constant key="Parameter_1522" name="rmaxPGDH" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="vPGI" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00771" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1255" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.9" />
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0004347" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1521" name="KPGIeq" value="1"/>
          <Constant key="Parameter_1520" name="KPGIf6p" value="1"/>
          <Constant key="Parameter_1519" name="KPGIf6ppginh" value="1"/>
          <Constant key="Parameter_1518" name="KPGIg6p" value="1"/>
          <Constant key="Parameter_1517" name="KPGIg6ppginh" value="1"/>
          <Constant key="Parameter_1516" name="rmaxPGI" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="vPGK" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01512" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1186" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.2.3" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1515" name="KPGKadp" value="1"/>
          <Constant key="Parameter_1514" name="KPGKatp" value="1"/>
          <Constant key="Parameter_1513" name="KPGKeq" value="1"/>
          <Constant key="Parameter_1512" name="KPGKpg3" value="1"/>
          <Constant key="Parameter_1511" name="KPGKpgp" value="1"/>
          <Constant key="Parameter_1510" name="cadp" value="1"/>
          <Constant key="Parameter_1509" name="catp" value="1"/>
          <Constant key="Parameter_1508" name="rmaxPGK" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="vPGM" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00959" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_605" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.4.2.2" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1507" name="KPGMeq" value="1"/>
          <Constant key="Parameter_1506" name="KPGMg1p" value="1"/>
          <Constant key="Parameter_1505" name="KPGMg6p" value="1"/>
          <Constant key="Parameter_1504" name="rmaxPGM" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="vPGP" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1503" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="vPK" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00200" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1524" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.40" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1502" name="KPKadp" value="1"/>
          <Constant key="Parameter_1501" name="KPKamp" value="1"/>
          <Constant key="Parameter_1500" name="KPKatp" value="1"/>
          <Constant key="Parameter_1499" name="KPKfdp" value="1"/>
          <Constant key="Parameter_1498" name="KPKpep" value="1"/>
          <Constant key="Parameter_1497" name="LPK" value="1"/>
          <Constant key="Parameter_1496" name="cadp" value="1"/>
          <Constant key="Parameter_1495" name="camp" value="1"/>
          <Constant key="Parameter_1494" name="catp" value="1"/>
          <Constant key="Parameter_1493" name="nPK" value="1"/>
          <Constant key="Parameter_1492" name="rmaxPK" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="vPPK" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01049" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2023" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.6.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1491" name="KRPPKrib5p" value="1"/>
          <Constant key="Parameter_1490" name="rmaxRPPK" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="vPTS" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/eco02060" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="65"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="65"/>
          <Product metabolite="Metabolite_12" stoichiometry="65"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1489" name="KPTSa1" value="1"/>
          <Constant key="Parameter_1488" name="KPTSa2" value="1"/>
          <Constant key="Parameter_1487" name="KPTSa3" value="1"/>
          <Constant key="Parameter_1486" name="KPTSg6p" value="1"/>
          <Constant key="Parameter_1485" name="nPTSg6p" value="1"/>
          <Constant key="Parameter_1484" name="rmaxPTS" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="vR5PI" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01056" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_6907" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1483" name="KR5PIeq" value="1"/>
          <Constant key="Parameter_1482" name="rmaxR5PI" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="vRIB5P" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1481" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="vRibu5p" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1480" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="vRu5P" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01529" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1522" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.1.3.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1479" name="KRu5Peq" value="1"/>
          <Constant key="Parameter_1478" name="rmaxRu5P" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="vSED7P" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1477" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="vSynth1" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009423" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1476" name="KSynth1pep" value="1"/>
          <Constant key="Parameter_1475" name="rmaxSynth1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="vSynth2" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006523" />
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009097" />
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0019877" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1474" name="KSynth2pyr" value="1"/>
          <Constant key="Parameter_1473" name="rmaxSynth2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="vTA" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01827" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1272" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.2" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1472" name="KTAeq" value="1"/>
          <Constant key="Parameter_1471" name="rmaxTA" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="vTIS" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01015" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_469" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.3.1.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1470" name="kTISdhap" value="1"/>
          <Constant key="Parameter_1469" name="kTISeq" value="1"/>
          <Constant key="Parameter_1468" name="kTISgap" value="1"/>
          <Constant key="Parameter_1467" name="rmaxTIS" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="vTKA" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01641" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_162" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1466" name="KTKaeq" value="1"/>
          <Constant key="Parameter_1465" name="rmaxTKa" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="vTKB" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01067" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_1811" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.2.1.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1464" name="KTKbeq" value="1"/>
          <Constant key="Parameter_1463" name="rmaxTKb" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="vTRPSYNTH" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0000162" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1462" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_7">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="vXYL5P" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1461" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="vf6P" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1460" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="vfdP" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1459" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="vpepCxylase" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00345" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/4.1.1.31" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1458" name="KpepCxylasefdp" value="1"/>
          <Constant key="Parameter_1457" name="KpepCxylasepep" value="1"/>
          <Constant key="Parameter_1456" name="npepCxylasefdp" value="1"/>
          <Constant key="Parameter_1455" name="rmaxpepCxylase" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="vpg2" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0044275" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1454" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="vpyr" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1453" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="vrpGluMu" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01518" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_576" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/5.4.2.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1452" name="KPGluMueq" value="1"/>
          <Constant key="Parameter_1451" name="KPGluMupg2" value="1"/>
          <Constant key="Parameter_1450" name="KPGluMupg3" value="1"/>
          <Constant key="Parameter_1449" name="rmaxPGluMu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="vsersynth" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009070" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1448" name="KSerSynthpg3" value="1"/>
          <Constant key="Parameter_1447" name="rmaxSerSynth" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.60791185793e+021 1.60791185793e+021 3.613285074000001e+020 1.31282691022e+020 2.09570534292e+021 1.00569767893e+020 1.28271620127e+021 6.684577386900001e+019 2.39681243242e+020 5.901698954200001e+019 8.310555670200002e+019 3.932458588870001e+020 2.402834574210001e+020 4.865890566320001e+020 4.817713432000001e+018 1.63802256688e+020 1.66211113404e+020 1.204428358e+021 0.582 0.9547829457364341 4.27 1.464399311851687 0.0934 0.1967593360995851 0.062 1 1 0.167 0.098 110.96 0.399 2.13 0.008 0.398 0.111 0.276 0.138 0.088 0.144 1.75 0.088 0.6 0.035 0.0053 6.73 0.135 0.1 4.42 0.119 3.2 1 14.4 0.0246 6.43 0.01 0.63 0.6830000000000001 0.252 1.09 1.04e-005 1159 0.7 4.07 128 3.89 4.14 19.1 3.2 0.123 0.325 3.26 208 0.0506 0.0138 37.5 0.1725 0.266 0.2 2.9 0.2 0.185 0.653 1934.4 0.473 0.0468 0.188 0.369 0.2 0.196 0.0136 1.038 0.26 0.2 22.5 0.19 0.31 3082.3 0.01 245.3 2.15 4 0.1 1.4 1 1 1 1.05 2.8 1.39 0.3 1.2 10 5629067 1000 2.6 2.2 1.2 3.68 4.21 11.1 4 3.66 17.41464425 0.1079531227 330.4476151 0.007525458026 0.01162042696 1.380196955 921.5942861 0.0022627 0.00043711 6.059531017 0.1070205858 1840.584747 16.23235977 650.9878687 3021.773771 89.04965407 0.8398242773 0.06113150238 7829.78 4.83841193 0.01290045226 6.739029475 0.025712107 0.01953897003 0.07361855055 10.87164108 68.67474392 9.473384783 86.55855855 0.001037 2 0.6 0.272 0.653 3.48 0.218 2 2.67 0.8080000000000001 2.67 2.78e-005 2.78e-005 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0088"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kALDOdhap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.088"/>
            <Parameter name="UpperBound" type="cn" value="0.88"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0144"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kALDOeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.144"/>
            <Parameter name="UpperBound" type="cn" value="1.44"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.175"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kALDOfdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.75"/>
            <Parameter name="UpperBound" type="cn" value="17.5"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0088"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kALDOgap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.088"/>
            <Parameter name="UpperBound" type="cn" value="0.88"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kALDOgapinh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.6"/>
            <Parameter name="UpperBound" type="cn" value="6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0035"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KDAHPSe4p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.035"/>
            <Parameter name="UpperBound" type="cn" value="0.35"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00053"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KDAHPSpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0053"/>
            <Parameter name="UpperBound" type="cn" value="0.053"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.673"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KENOeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.73"/>
            <Parameter name="UpperBound" type="cn" value="67.3"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0135"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KENOpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.135"/>
            <Parameter name="UpperBound" type="cn" value="1.35"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KENOpg2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.442"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG1PATatp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.42"/>
            <Parameter name="UpperBound" type="cn" value="44.2"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0119"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG1PATfdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.119"/>
            <Parameter name="UpperBound" type="cn" value="1.19"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.32"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG1PATg1p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.2"/>
            <Parameter name="UpperBound" type="cn" value="32"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG3PDHdhap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.44"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG6PDHg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="14.4"/>
            <Parameter name="UpperBound" type="cn" value="144"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00246"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG6PDHnadp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0246"/>
            <Parameter name="UpperBound" type="cn" value="0.246"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.643"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG6PDHnadphg6pinh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.43"/>
            <Parameter name="UpperBound" type="cn" value="64.3"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KG6PDHnadphnadpinh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.01"/>
            <Parameter name="UpperBound" type="cn" value="0.1"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.063"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KGAPDHeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.63"/>
            <Parameter name="UpperBound" type="cn" value="6.3"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0683"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KGAPDHgap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.6830000000000001"/>
            <Parameter name="UpperBound" type="cn" value="6.83"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0252"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KGAPDHnad],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.252"/>
            <Parameter name="UpperBound" type="cn" value="2.52"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.109"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KGAPDHnadh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.09"/>
            <Parameter name="UpperBound" type="cn" value="10.9"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.04e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KGAPDHpgp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.04e-005"/>
            <Parameter name="UpperBound" type="cn" value="0.000104"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="115.9"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPDHpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1159"/>
            <Parameter name="UpperBound" type="cn" value="11590"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KpepCxylasefdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.7"/>
            <Parameter name="UpperBound" type="cn" value="7"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.407"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KpepCxylasepep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.07"/>
            <Parameter name="UpperBound" type="cn" value="40.7"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="12.8"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKadpa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="128"/>
            <Parameter name="UpperBound" type="cn" value="1280"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.389"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKadpb],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.89"/>
            <Parameter name="UpperBound" type="cn" value="38.9"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.414"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKadpc],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.14"/>
            <Parameter name="UpperBound" type="cn" value="41.4"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.91"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKampa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="19.1"/>
            <Parameter name="UpperBound" type="cn" value="191"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.32"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKampb],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.2"/>
            <Parameter name="UpperBound" type="cn" value="32"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0123"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKatps],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.123"/>
            <Parameter name="UpperBound" type="cn" value="1.23"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0325"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKf6ps],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.325"/>
            <Parameter name="UpperBound" type="cn" value="3.25"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.326"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPFKpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.26"/>
            <Parameter name="UpperBound" type="cn" value="32.6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="20.8"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGDHatpinh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="208"/>
            <Parameter name="UpperBound" type="cn" value="2080"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00506"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGDHnadp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0506"/>
            <Parameter name="UpperBound" type="cn" value="0.506"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00138"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGDHnadphinh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0138"/>
            <Parameter name="UpperBound" type="cn" value="0.138"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="3.75"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGDHpg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="37.5"/>
            <Parameter name="UpperBound" type="cn" value="375"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.01725"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGIeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.1725"/>
            <Parameter name="UpperBound" type="cn" value="1.725"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0266"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGIf6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.266"/>
            <Parameter name="UpperBound" type="cn" value="2.66"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.02"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGIf6ppginh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.2"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.29"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGIg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.9"/>
            <Parameter name="UpperBound" type="cn" value="29"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.02"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGIg6ppginh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.2"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0185"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGKadp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.185"/>
            <Parameter name="UpperBound" type="cn" value="1.85"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0653"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGKatp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.653"/>
            <Parameter name="UpperBound" type="cn" value="6.53"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="193.44"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGKeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1934.4"/>
            <Parameter name="UpperBound" type="cn" value="19344"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0473"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGKpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.473"/>
            <Parameter name="UpperBound" type="cn" value="4.73"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00468"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGKpgp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0468"/>
            <Parameter name="UpperBound" type="cn" value="0.468"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0188"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGluMueq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.188"/>
            <Parameter name="UpperBound" type="cn" value="1.88"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0369"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGluMupg2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.369"/>
            <Parameter name="UpperBound" type="cn" value="3.69"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.02"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGluMupg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.2"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0196"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGMeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.196"/>
            <Parameter name="UpperBound" type="cn" value="1.96"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00136"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGMg1p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0136"/>
            <Parameter name="UpperBound" type="cn" value="0.136"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1038"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPGMg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.038"/>
            <Parameter name="UpperBound" type="cn" value="10.38"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.026"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPKadp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.26"/>
            <Parameter name="UpperBound" type="cn" value="2.6"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.02"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPKamp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.2"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2.25"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPKatp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="22.5"/>
            <Parameter name="UpperBound" type="cn" value="225"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.019"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPKfdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.19"/>
            <Parameter name="UpperBound" type="cn" value="1.9"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.031"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPKpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.31"/>
            <Parameter name="UpperBound" type="cn" value="3.1"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="308.23"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPTSa1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3082.3"/>
            <Parameter name="UpperBound" type="cn" value="30823"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPTSa2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.01"/>
            <Parameter name="UpperBound" type="cn" value="0.1"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="24.53"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPTSa3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="245.3"/>
            <Parameter name="UpperBound" type="cn" value="2453"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.215"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KPTSg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.15"/>
            <Parameter name="UpperBound" type="cn" value="21.5"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.4"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KR5PIeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4"/>
            <Parameter name="UpperBound" type="cn" value="40"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KRPPKrib5p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.14"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KRu5Peq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.4"/>
            <Parameter name="UpperBound" type="cn" value="14"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KSerSynthpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KSynth1pep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KSynth2pyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.105"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KTAeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.05"/>
            <Parameter name="UpperBound" type="cn" value="10.5"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.28"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kTISdhap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.8"/>
            <Parameter name="UpperBound" type="cn" value="28"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.139"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kTISeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.39"/>
            <Parameter name="UpperBound" type="cn" value="13.9"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[kTISgap],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.3"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.12"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KTKaeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.2"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[KTKbeq],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="10"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="562907"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[LPFK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5629067"/>
            <Parameter name="UpperBound" type="cn" value="5.62907e+07"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[LPK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nDAHPSe4p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.6"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nDAHPSpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.2"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nG1PATfdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.2"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nPDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.68"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[npepCxylasefdp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.21"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nPFK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="11.1"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nPK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[nPTSg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.66"/>
            <Parameter name="UpperBound" type="cn" value="12"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.74146"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxALDO],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="17.41464425"/>
            <Parameter name="UpperBound" type="cn" value="174.146"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0107953"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxDAHPS],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.107953"/>
            <Parameter name="UpperBound" type="cn" value="1.07953"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="33.0448"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxENO],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="330.448"/>
            <Parameter name="UpperBound" type="cn" value="3304.48"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000752546"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxG1PAT],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.007525458026"/>
            <Parameter name="UpperBound" type="cn" value="0.0752546"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00116204"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxG3PDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.01162042696"/>
            <Parameter name="UpperBound" type="cn" value="0.116204"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.13802"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxG6PDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.380196955"/>
            <Parameter name="UpperBound" type="cn" value="13.802"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="92.1594"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxGAPDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="921.5942861"/>
            <Parameter name="UpperBound" type="cn" value="9215.94"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00022627"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxMetSynth],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0022627"/>
            <Parameter name="UpperBound" type="cn" value="0.022627"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="4.3711e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxMurSynth],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00043711"/>
            <Parameter name="UpperBound" type="cn" value="0.0043711"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.605953"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.059531017"/>
            <Parameter name="UpperBound" type="cn" value="60.5953"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0107021"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxpepCxylase],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.107021"/>
            <Parameter name="UpperBound" type="cn" value="1.07021"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="184.058"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPFK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1840.58"/>
            <Parameter name="UpperBound" type="cn" value="18405.8"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.62324"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPGDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="16.2324"/>
            <Parameter name="UpperBound" type="cn" value="162.324"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="65.0988"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPGI],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="650.9878687"/>
            <Parameter name="UpperBound" type="cn" value="6509.88"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="302.177"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPGK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3021.773771"/>
            <Parameter name="UpperBound" type="cn" value="30217.7"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0839824"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPGM],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.8398242773"/>
            <Parameter name="UpperBound" type="cn" value="8.39824"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="8.90497"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPGluMu],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="89.04965407"/>
            <Parameter name="UpperBound" type="cn" value="890.497"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00611315"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.06113150238"/>
            <Parameter name="UpperBound" type="cn" value="0.611315"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="782.978"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxPTS],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="7829.78"/>
            <Parameter name="UpperBound" type="cn" value="78297.8"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.483841"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxR5PI],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.83841193"/>
            <Parameter name="UpperBound" type="cn" value="48.3841"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00129005"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxRPPK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0129005"/>
            <Parameter name="UpperBound" type="cn" value="0.129005"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.673903"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxRu5P],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.73903"/>
            <Parameter name="UpperBound" type="cn" value="67.3903"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00257121"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxSerSynth],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.025712107"/>
            <Parameter name="UpperBound" type="cn" value="0.257121"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0019539"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxSynth1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.01953897003"/>
            <Parameter name="UpperBound" type="cn" value="0.19539"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00736186"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxSynth2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.07361855055"/>
            <Parameter name="UpperBound" type="cn" value="0.736186"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.08716"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxTA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="10.87164108"/>
            <Parameter name="UpperBound" type="cn" value="108.716"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.86747"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxTIS],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="68.67474392"/>
            <Parameter name="UpperBound" type="cn" value="686.747"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.947338"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxTKa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="9.473384783"/>
            <Parameter name="UpperBound" type="cn" value="94.7338"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="8.65586"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxTKb],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="86.55855855"/>
            <Parameter name="UpperBound" type="cn" value="865.586"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0001037"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[rmaxTrpSynth],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.001037"/>
            <Parameter name="UpperBound" type="cn" value="0.01037"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.2"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=chassagnole,Vector=Values[VALDOblf],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2"/>
            <Parameter name="UpperBound" type="cn" value="20"/>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="exp_1">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="chass_exp_1.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="15"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="5"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cpep],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cg6p],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cpyr],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cf6p],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="exp_2">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="chass_exp_2.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_2"/>
            <Parameter name="Last Row" type="unsignedInteger" value="12"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[extracellular],Vector=Metabolites[cglcex],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="exp_3">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="chass_exp_3.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_3"/>
            <Parameter name="Last Row" type="unsignedInteger" value="9"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cg1p],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="chass_exp_4.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="16"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="2"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cpg],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="exp_5">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="chass_exp_5.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_4"/>
            <Parameter name="Last Row" type="unsignedInteger" value="11"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="3"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cfdp],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=chassagnole,Vector=Compartments[cytosol],Vector=Metabolites[cgap],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-006"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-006"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="chass.xml">
    <SBMLMap SBMLid="Dil" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="KDAHPSe4p" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="KDAHPSpep" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="KENOeq" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="KENOpep" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="KENOpg2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="KG1PATatp" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="KG1PATfdp" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="KG1PATg1p" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="KG3PDHdhap" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="KG6PDHg6p" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="KG6PDHnadp" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="KG6PDHnadphg6pinh" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="KG6PDHnadphnadpinh" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="KGAPDHeq" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="KGAPDHgap" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="KGAPDHnad" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="KGAPDHnadh" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="KGAPDHpgp" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="KPDHpyr" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="KPFKadpa" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="KPFKadpb" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="KPFKadpc" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="KPFKampa" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="KPFKampb" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="KPFKatps" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="KPFKf6ps" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="KPFKpep" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="KPGDHatpinh" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="KPGDHnadp" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="KPGDHnadphinh" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="KPGDHpg" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="KPGIeq" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="KPGIf6p" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="KPGIf6ppginh" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="KPGIg6p" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="KPGIg6ppginh" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="KPGKadp" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="KPGKatp" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="KPGKeq" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="KPGKpg3" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="KPGKpgp" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="KPGMeq" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="KPGMg1p" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="KPGMg6p" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="KPGluMueq" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="KPGluMupg2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="KPGluMupg3" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="KPKadp" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="KPKamp" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="KPKatp" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="KPKfdp" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="KPKpep" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="KPTSa1" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="KPTSa2" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="KPTSa3" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="KPTSg6p" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="KR5PIeq" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="KRPPKrib5p" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="KRu5Peq" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="KSerSynthpg3" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="KSynth1pep" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="KSynth2pyr" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="KTAeq" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="KTKaeq" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="KTKbeq" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="KpepCxylasefdp" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="KpepCxylasepep" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="LPFK" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="LPK" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="VALDOblf" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="cadp" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="camp" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="catp" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="cdhap" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="cdhap_init" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="ce4p" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ce4p_init" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="cf6p" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="cf6p_init" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="cfdp" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="cfdp_init" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="cfeed" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="cg1p" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="cg1p_init" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="cg6p" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="cg6p_init" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="cgap" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="cgap_init" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="cglcex" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="cglcex_init" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="cnad" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="cnadh" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="cnadp" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="cnadph" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="cpep" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="cpep_init" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="cpg" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="cpg2" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="cpg2_init" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="cpg3" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="cpg3_init" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="cpg_init" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="cpgp" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="cpgp_init" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="cpyr" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="cpyr_init" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="crib5p" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="crib5p_init" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="cribu5p" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="cribu5p_init" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="csed7p" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="csed7p_init" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="cxyl5p" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="cxyl5p_init" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="cytosol" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="extracellular" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="kALDOdhap" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kALDOeq" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kALDOfdp" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kALDOgap" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kALDOgapinh" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kTISdhap" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="kTISeq" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="kTISgap" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="nDAHPSe4p" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="nDAHPSpep" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="nG1PATfdp" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="nPDH" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="nPFK" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="nPK" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="nPTSg6p" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="npepCxylasefdp" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="rmaxALDO" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="rmaxDAHPS" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="rmaxENO" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="rmaxG1PAT" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="rmaxG3PDH" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="rmaxG6PDH" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="rmaxGAPDH" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="rmaxMetSynth" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="rmaxMurSynth" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="rmaxPDH" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="rmaxPFK" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="rmaxPGDH" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="rmaxPGI" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="rmaxPGK" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="rmaxPGM" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="rmaxPGluMu" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="rmaxPK" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="rmaxPTS" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="rmaxR5PI" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="rmaxRPPK" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="rmaxRu5P" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="rmaxSerSynth" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="rmaxSynth1" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="rmaxSynth2" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="rmaxTA" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="rmaxTIS" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="rmaxTKa" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="rmaxTKb" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="rmaxTrpSynth" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="rmaxpepCxylase" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="vALDO" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="vDAHPS" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="vDHAP" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="vE4P" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="vENO" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="vEXTER" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="vG1PAT" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="vG3PDH" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="vG6P" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vG6PDH" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="vGAP" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="vGAPDH" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="vGLP" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="vMURSyNTH" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vMethSynth" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="vPDH" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vPEP" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="vPFK" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="vPG" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="vPG3" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="vPGDH" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="vPGI" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="vPGK" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="vPGM" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="vPGP" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="vPK" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="vPPK" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="vPTS" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="vR5PI" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="vRIB5P" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="vRibu5p" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="vRu5P" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="vSED7P" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="vSynth1" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="vSynth2" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="vTA" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="vTIS" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="vTKA" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="vTKB" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="vTRPSYNTH" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="vXYL5P" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="vf6P" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="vfdP" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="vpepCxylase" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="vpg2" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="vpyr" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="vrpGluMu" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="vsersynth" COPASIkey="Reaction_47"/>
  </SBMLReference>
</COPASI>
