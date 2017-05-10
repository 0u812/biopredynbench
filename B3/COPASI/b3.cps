<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.11 (Build 65) (http://www.copasi.org) at 2014-04-04 13:25:29 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="11" versionDevel="65" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <b xmlns="http://www.w3.org/1999/xhtml">
mass action rate law for first order irreversible reactions
</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="function_4_pts_r1" type="UserDefined" reversible="true">
      <Expression>
        (pts_k1*(PEP*Cell)*(EIIA*Cell)-pts_km1*(PYR*Cell)*(EIIA_P*Cell))/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_258" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="EIIA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="EIIA_P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_254" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="PYR" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_264" name="pts_k1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="pts_km1" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_pts_r4" type="UserDefined" reversible="false">
      <Expression>
        pts_k4*EIICB*(EIIA_P*Cell)*GLC/((pts_KEIIA+EIIA_P*Cell)*(pts_Kglc+GLC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_265" name="EIIA_P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="EIICB" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="GLC" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="pts_KEIIA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="pts_Kglc" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="pts_k4" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_e_AceK_Ki" type="UserDefined" reversible="false">
      <Expression>
        AceK*e_AceK_kcat_ki*(Icd*Cell)/e_AceK_Kicd*(1+Icd*Cell/e_AceK_Kicd)^(e_AceK_n-1)/((1+Icd*Cell/e_AceK_Kicd)^e_AceK_n+e_AceK_L*(1+ICT*Cell/e_AceK_Kict+GLX*Cell/e_AceK_Kglx+OAA*Cell/e_AceK_Koaa+AKG*Cell/e_AceK_Kakg+PEP*Cell/e_AceK_Kpep+PG3*Cell/e_AceK_Kpg3+PYR*Cell/e_AceK_Kpyr)^e_AceK_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="AKG" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="AceK" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_292" name="GLX" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="ICT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_246" name="Icd" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="OAA" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="PEP" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="PG3" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="PYR" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="e_AceK_Kakg" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="e_AceK_Kglx" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="e_AceK_Kicd" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="e_AceK_Kict" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="e_AceK_Koaa" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="e_AceK_Kpep" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="e_AceK_Kpg3" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="e_AceK_Kpyr" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="e_AceK_L" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="e_AceK_kcat_ki" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="e_AceK_n" order="20" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_e_AceK_Ph" type="UserDefined" reversible="false">
      <Expression>
        AceK*e_AceK_kcat_ph*(Icd_P*Cell)/e_AceK_Kicd_P*(1+Icd_P*Cell/e_AceK_Kicd_P)^(e_AceK_n-1)/((1+Icd_P*Cell/e_AceK_Kicd_P)^e_AceK_n+e_AceK_L/(1+OAA*Cell/e_AceK_Koaa+AKG*Cell/e_AceK_Kakg+PEP*Cell/e_AceK_Kpep+PG3*Cell/e_AceK_Kpg3+PYR*Cell/e_AceK_Kpyr)^e_AceK_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="AKG" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="AceK" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_307" name="Icd_P" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="OAA" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="PEP" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="PG3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="PYR" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="e_AceK_Kakg" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="e_AceK_Kicd_P" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="e_AceK_Koaa" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="e_AceK_Kpep" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="e_AceK_Kpg3" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="e_AceK_Kpyr" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="e_AceK_L" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="e_AceK_kcat_ph" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="e_AceK_n" order="16" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_tf_Cra" type="UserDefined" reversible="true">
      <Expression>
        tf_Cra_scale*((Cra*Cell+CraFBP*Cell)*(FBP*Cell)^tf_Cra_n/((FBP*Cell)^tf_Cra_n+tf_Cra_kfbp^tf_Cra_n)-CraFBP*Cell)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_324" name="Cra" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="CraFBP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_281" name="FBP" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="tf_Cra_kfbp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="tf_Cra_n" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="tf_Cra_scale" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_tf_Crp" type="UserDefined" reversible="true">
      <Expression>
        tf_Crp_scale*((Crp*Cell+CrpcAMP*Cell)*(cAMP*Cell)^tf_Crp_n/((cAMP*Cell)^tf_Crp_n+tf_Crp_kcamp^tf_Crp_n)-CrpcAMP*Cell)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="Crp" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="CrpcAMP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_309" name="cAMP" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="tf_Crp_kcamp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="tf_Crp_n" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="tf_Crp_scale" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_tf_PdhR" type="UserDefined" reversible="true">
      <Expression>
        tf_PdhR_scale*((PdhR*Cell+PdhRPYR*Cell)*(PYR*Cell)^tf_PdhR_n/((PYR*Cell)^tf_PdhR_n+tf_PdhR_kpyr^tf_PdhR_n)-PdhRPYR*Cell)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_334" name="PYR" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="PdhR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="PdhRPYR" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_338" name="tf_PdhR_kpyr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="tf_PdhR_n" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="tf_PdhR_scale" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_e_AceA" type="UserDefined" reversible="false">
      <Expression>
        AceA*e_AceA_kcat*(ICT*Cell)/e_AceA_Kict*(1+ICT*Cell/e_AceA_Kict)^(e_AceA_n-1)/((1+ICT*Cell/e_AceA_Kict)^e_AceA_n+e_AceA_L*(1+PEP*Cell/e_AceA_Kpep+PG3*Cell/e_AceA_Kpg3+AKG*Cell/e_AceA_Kakg)^e_AceA_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="AKG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="AceA" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_274" name="ICT" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="PEP" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="PG3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="e_AceA_Kakg" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="e_AceA_Kict" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="e_AceA_Kpep" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="e_AceA_Kpg3" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="e_AceA_L" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="e_AceA_kcat" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="e_AceA_n" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_e_AceB" type="UserDefined" reversible="false">
      <Expression>
        AceB*e_AceB_kcat*(GLX*Cell)*(ACoA*Cell)/(e_AceB_Kglxacoa*e_AceB_Kacoa+e_AceB_Kacoa*(GLX*Cell)+e_AceB_Kglx*(ACoA*Cell)+GLX*Cell*(ACoA*Cell))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="ACoA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="AceB" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_346" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_350" name="GLX" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="e_AceB_Kacoa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="e_AceB_Kglx" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="e_AceB_Kglxacoa" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="e_AceB_kcat" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_e_Acoa2act" type="UserDefined" reversible="false">
      <Expression>
        Acoa2act*e_Acoa2act_kcat*(ACoA*Cell)/e_Acoa2act_Kacoa*(1+ACoA*Cell/e_Acoa2act_Kacoa)^(e_Acoa2act_n-1)/((1+ACoA*Cell/e_Acoa2act_Kacoa)^e_Acoa2act_n+e_Acoa2act_L/(1+PYR*Cell/e_Acoa2act_Kpyr)^e_Acoa2act_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="ACoA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_361" name="Acoa2act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_368" name="PYR" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="e_Acoa2act_Kacoa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="e_Acoa2act_Kpyr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="e_Acoa2act_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="e_Acoa2act_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="e_Acoa2act_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_e_Acs" type="UserDefined" reversible="false">
      <Expression>
        Acs*e_Acs_kcat*ACT/(ACT+e_Acs_Kact)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="ACT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="Acs" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="e_Acs_Kact" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="e_Acs_kcat" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_e_Akg2mal" type="UserDefined" reversible="false">
      <Expression>
        Akg2mal*e_Akg2mal_kcat*(AKG*Cell)/(AKG*Cell+e_Akg2mal_Kakg)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="AKG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="Akg2mal" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_373" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="e_Akg2mal_Kakg" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="e_Akg2mal_kcat" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_e_CAMPdegr" type="UserDefined" reversible="false">
      <Expression>
        e_CAMPdegr_kcat*CAMPdegr*(cAMP*Cell)/(cAMP*Cell+e_CAMPdegr_KcAMP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="CAMPdegr" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_356" name="cAMP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_380" name="e_CAMPdegr_KcAMP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="e_CAMPdegr_kcat" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_e_Cya" type="UserDefined" reversible="false">
      <Expression>
        e_Cya_kcat*Cya*(EIIA_P*Cell)/(EIIA_P*Cell+e_Cya_KEIIA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_377" name="Cya" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="EIIA_P" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="e_Cya_KEIIA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="e_Cya_kcat" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_e_Emp" type="UserDefined" reversible="true">
      <Expression>
        (Emp*Cell*e_Emp_kcat_f*(FBP*Cell)/e_Emp_Kfbp-Emp*Cell*e_Emp_kcat_r*(PG3*Cell)/e_Emp_Kpg3)/(1+FBP*Cell/e_Emp_Kfbp+PG3*Cell/e_Emp_Kpg3)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_386" name="Emp" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_388" name="FBP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_394" name="PG3" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_390" name="e_Emp_Kfbp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="e_Emp_Kpg3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="e_Emp_kcat_f" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="e_Emp_kcat_r" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_e_Eno" type="UserDefined" reversible="true">
      <Expression>
        (Eno*Cell*e_Eno_kcatf*(PG3*Cell)/e_Eno_Kpg3-Eno*Cell*e_Eno_kcatr*(PEP*Cell)/e_Eno_Kpep)/(1+PG3*Cell/e_Eno_Kpg3+PEP*Cell/e_Eno_Kpep)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_397" name="Eno" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="PEP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_369" name="PG3" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="e_Eno_Kpep" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="e_Eno_Kpg3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="e_Eno_kcatf" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="e_Eno_kcatr" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_e_Fdp" type="UserDefined" reversible="false">
      <Expression>
        Fdp*e_Fdp_kcat*(FBP*Cell)/e_Fdp_Kfbp*(1+FBP*Cell/e_Fdp_Kfbp)^(e_Fdp_n-1)/((1+FBP*Cell/e_Fdp_Kfbp)^e_Fdp_n+e_Fdp_L/(1+PEP*Cell/e_Fdp_Kpep)^e_Fdp_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_384" name="FBP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_405" name="Fdp" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_412" name="PEP" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_406" name="e_Fdp_Kfbp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="e_Fdp_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="e_Fdp_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="e_Fdp_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="e_Fdp_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_e_GltA" type="UserDefined" reversible="false">
      <Expression>
        GltA*e_GltA_kcat*(OAA*Cell)*(ACoA*Cell)/((1+AKG*Cell/e_GltA_Kakg)*e_GltA_Koaaacoa*e_GltA_Kacoa+e_GltA_Kacoa*(OAA*Cell)+(1+AKG*Cell/e_GltA_Kakg)*e_GltA_Koaa*(ACoA*Cell)+OAA*Cell*(ACoA*Cell))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="ACoA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="AKG" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_387" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_415" name="GltA" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="OAA" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="e_GltA_Kacoa" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="e_GltA_Kakg" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="e_GltA_Koaa" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="e_GltA_Koaaacoa" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="e_GltA_kcat" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_e_Icd" type="UserDefined" reversible="false">
      <Expression>
        Icd*e_Icd_kcat*(ICT*Cell)/e_Icd_Kict*(1+ICT*Cell/e_Icd_Kict)^(e_Icd_n-1)/((1+ICT*Cell/e_Icd_Kict)^e_Icd_n+e_Icd_L*(1+PEP*Cell/e_Icd_Kpep)^e_Icd_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_418" name="ICT" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_426" name="Icd" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_431" name="PEP" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_409" name="e_Icd_Kict" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="e_Icd_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="e_Icd_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="e_Icd_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="e_Icd_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_e_Mdh" type="UserDefined" reversible="false">
      <Expression>
        Mdh*e_Mdh_kcat*(MAL*Cell)^e_Mdh_n/((MAL*Cell)^e_Mdh_n+e_Mdh_Kmal^e_Mdh_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_413" name="MAL" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="Mdh" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_436" name="e_Mdh_Kmal" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="e_Mdh_kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="e_Mdh_n" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_e_Me" type="UserDefined" reversible="false">
      <Expression>
        Me*e_Me_kcat*(MAL*Cell)/e_Me_Kmal*(1+MAL*Cell/e_Me_Kmal)^(e_Me_n-1)/((1+MAL*Cell/e_Me_Kmal)^e_Me_n+e_Me_L*(1+ACoA*Cell/e_Me_Kacoa+cAMP*Cell/e_Me_Kcamp)^e_Me_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_446" name="ACoA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_438" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_428" name="MAL" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_437" name="Me" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_450" name="cAMP" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_448" name="e_Me_Kacoa" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="e_Me_Kcamp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="e_Me_Kmal" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="e_Me_L" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="e_Me_kcat" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="e_Me_n" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_e_PckA" type="UserDefined" reversible="false">
      <Expression>
        PckA*e_PckA_kcat*(OAA*Cell)/(OAA*Cell+e_PckA_Koaa*(1+PEP*Cell/e_PckA_Kpep))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_445" name="OAA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="PEP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="PckA" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_432" name="e_PckA_Koaa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="e_PckA_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="e_PckA_kcat" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_e_Pdh" type="UserDefined" reversible="false">
      <Expression>
        Pdh*e_Pdh_kcat*(PYR*Cell)/e_Pdh_Kpyr*(1+PYR*Cell/e_Pdh_Kpyr)^(e_Pdh_n-1)/((1+PYR*Cell/e_Pdh_Kpyr)^e_Pdh_n+e_Pdh_L*(1+GLX*Cell/e_Pdh_Kglx+PYR*Cell/e_Pdh_KpyrI)^e_Pdh_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_464" name="GLX" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_443" name="PYR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_456" name="Pdh" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_466" name="e_Pdh_Kglx" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="e_Pdh_Kpyr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="e_Pdh_KpyrI" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="e_Pdh_L" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="e_Pdh_kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="e_Pdh_n" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_e_PfkA" type="UserDefined" reversible="false">
      <Expression>
        PfkA*e_PfkA_kcat*(G6P*Cell)/e_PfkA_Kg6p*(1+G6P*Cell/e_PfkA_Kg6p)^(e_PfkA_n-1)/((1+G6P*Cell/e_PfkA_Kg6p)^e_PfkA_n+e_PfkA_L*(1+PEP*Cell/e_PfkA_Kpep)^e_PfkA_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_461" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_474" name="PEP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_469" name="PfkA" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_439" name="e_PfkA_Kg6p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="e_PfkA_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="e_PfkA_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="e_PfkA_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="e_PfkA_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_e_Ppc" type="UserDefined" reversible="false">
      <Expression>
        Ppc*e_Ppc_kcat*(PEP*Cell)/e_Ppc_Kpep*(1+PEP*Cell/e_Ppc_Kpep)^(e_Ppc_n-1)/((1+PEP*Cell/e_Ppc_Kpep)^e_Ppc_n+e_Ppc_L/(1+FBP*Cell/e_Ppc_Kfbp)^e_Ppc_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_459" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_483" name="FBP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_454" name="PEP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_477" name="Ppc" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_485" name="e_Ppc_Kfbp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="e_Ppc_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="e_Ppc_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="e_Ppc_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="e_Ppc_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_e_PpsA" type="UserDefined" reversible="false">
      <Expression>
        PpsA*e_PpsA_kcat*(PYR*Cell)/e_PpsA_Kpyr*(1+PYR*Cell/e_PpsA_Kpyr)^(e_PpsA_n-1)/((1+PYR*Cell/e_PpsA_Kpyr)^e_PpsA_n+e_PpsA_L*(1+PEP*Cell/e_PpsA_Kpep)^e_PpsA_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_492" name="PEP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_478" name="PYR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_486" name="PpsA" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_494" name="e_PpsA_Kpep" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="e_PpsA_Kpyr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="e_PpsA_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="e_PpsA_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="e_PpsA_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_e_PykF" type="UserDefined" reversible="false">
      <Expression>
        PykF*e_PykF_kcat*(PEP*Cell)/e_PykF_Kpep*(1+PEP*Cell/e_PykF_Kpep)^(e_PykF_n-1)/((1+PEP*Cell/e_PykF_Kpep)^e_PykF_n+e_PykF_L/(1+FBP*Cell/e_PykF_Kfbp)^e_PykF_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_463" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_501" name="FBP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_487" name="PEP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_495" name="PykF" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="e_PykF_Kfbp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="e_PykF_Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="e_PykF_L" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_491" name="e_PykF_kcat" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="e_PykF_n" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_g_aceA" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_aceBAK_Kcra))*g_aceBAK_vcra_unbound+Cra*Cell/(Cra*Cell+g_aceBAK_Kcra)*g_aceBAK_vcra_bound+(1-CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp))*g_aceBAK_vcrp_unbound+CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp)*g_aceBAK_vcrp_bound+g_aceBAK_kcat_iclr*(IclR*Cell)*(1-g_aceBAK_DNA/g_aceBAK_KDNA*(1+PYR*Cell/g_aceBAK_KPprime)/(1+GLX*Cell/g_aceBAK_KG*(1+GLX*Cell/g_aceBAK_KG)/g_aceBAK_L+g_aceBAK_DNA/g_aceBAK_KDNA+PYR*Cell/g_aceBAK_KP+g_aceBAK_DNA*(PYR*Cell)/g_aceBAK_KDNA/g_aceBAK_KPprime)))/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_496" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_510" name="CrpcAMP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_530" name="GLX" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_520" name="IclR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_526" name="PYR" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="bm_k_expr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="g_aceBAK_DNA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="g_aceBAK_KDNA" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_532" name="g_aceBAK_KG" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="g_aceBAK_KP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="g_aceBAK_KPprime" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="g_aceBAK_Kcra" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="g_aceBAK_Kcrp" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_534" name="g_aceBAK_L" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="g_aceBAK_kcat_iclr" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="g_aceBAK_vcra_bound" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="g_aceBAK_vcra_unbound" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="g_aceBAK_vcrp_bound" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_514" name="g_aceBAK_vcrp_unbound" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="mu" order="20" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_g_aceB" type="UserDefined" reversible="false">
      <Expression>
        g_aceBAK_aceBfactor*bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_aceBAK_Kcra))*g_aceBAK_vcra_unbound+Cra*Cell/(Cra*Cell+g_aceBAK_Kcra)*g_aceBAK_vcra_bound+(1-CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp))*g_aceBAK_vcrp_unbound+CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp)*g_aceBAK_vcrp_bound+g_aceBAK_kcat_iclr*(IclR*Cell)*(1-g_aceBAK_DNA/g_aceBAK_KDNA*(1+PYR*Cell/g_aceBAK_KPprime)/(1+GLX*Cell/g_aceBAK_KG*(1+GLX*Cell/g_aceBAK_KG)/g_aceBAK_L+g_aceBAK_DNA/g_aceBAK_KDNA+PYR*Cell/g_aceBAK_KP+g_aceBAK_DNA*(PYR*Cell)/g_aceBAK_KDNA/g_aceBAK_KPprime)))/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_521" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_525" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_505" name="CrpcAMP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_553" name="GLX" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_543" name="IclR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_549" name="PYR" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_533" name="bm_k_expr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="g_aceBAK_DNA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_547" name="g_aceBAK_KDNA" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="g_aceBAK_KG" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="g_aceBAK_KP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="g_aceBAK_KPprime" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="g_aceBAK_Kcra" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="g_aceBAK_Kcrp" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="g_aceBAK_L" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="g_aceBAK_aceBfactor" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="g_aceBAK_kcat_iclr" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="g_aceBAK_vcra_bound" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="g_aceBAK_vcra_unbound" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="g_aceBAK_vcrp_bound" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_502" name="g_aceBAK_vcrp_unbound" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="mu" order="21" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_g_aceK" type="UserDefined" reversible="false">
      <Expression>
        g_aceBAK_aceKfactor*bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_aceBAK_Kcra))*g_aceBAK_vcra_unbound+Cra*Cell/(Cra*Cell+g_aceBAK_Kcra)*g_aceBAK_vcra_bound+(1-CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp))*g_aceBAK_vcrp_unbound+CrpcAMP*Cell/(CrpcAMP*Cell+g_aceBAK_Kcrp)*g_aceBAK_vcrp_bound+g_aceBAK_kcat_iclr*(IclR*Cell)*(1-g_aceBAK_DNA/g_aceBAK_KDNA*(1+PYR*Cell/g_aceBAK_KPprime)/(1+GLX*Cell/g_aceBAK_KG*(1+GLX*Cell/g_aceBAK_KG)/g_aceBAK_L+g_aceBAK_DNA/g_aceBAK_KDNA+PYR*Cell/g_aceBAK_KP+g_aceBAK_DNA*(PYR*Cell)/g_aceBAK_KDNA/g_aceBAK_KPprime)))/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_544" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_548" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_515" name="CrpcAMP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="GLX" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_565" name="IclR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_571" name="PYR" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_556" name="bm_k_expr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="g_aceBAK_DNA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="g_aceBAK_KDNA" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="g_aceBAK_KG" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="g_aceBAK_KP" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="g_aceBAK_KPprime" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="g_aceBAK_Kcra" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="g_aceBAK_Kcrp" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="g_aceBAK_L" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="g_aceBAK_aceKfactor" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_563" name="g_aceBAK_kcat_iclr" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="g_aceBAK_vcra_bound" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="g_aceBAK_vcra_unbound" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="g_aceBAK_vcrp_bound" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="g_aceBAK_vcrp_unbound" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="mu" order="21" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_g_acoa2act" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_582" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_g_acs" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-(CrpcAMP*Cell)^g_acs_n/((CrpcAMP*Cell)^g_acs_n+g_acs_Kcrp^g_acs_n))*g_acs_vcrp_unbound+(CrpcAMP*Cell)^g_acs_n/((CrpcAMP*Cell)^g_acs_n+g_acs_Kcrp^g_acs_n)*g_acs_vcrp_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_568" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_572" name="CrpcAMP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_580" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="g_acs_Kcrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="g_acs_n" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="g_acs_vcrp_bound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="g_acs_vcrp_unbound" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="mu" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_g_akg2mal" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-(CrpcAMP*Cell)^g_akg2mal_n/((CrpcAMP*Cell)^g_akg2mal_n+g_akg2mal_Kcrp^g_akg2mal_n))*g_akg2mal_vcrp_unbound+(CrpcAMP*Cell)^g_akg2mal_n/((CrpcAMP*Cell)^g_akg2mal_n+g_akg2mal_Kcrp^g_akg2mal_n)*g_akg2mal_vcrp_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_574" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_566" name="CrpcAMP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_538" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="g_akg2mal_Kcrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="g_akg2mal_n" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_584" name="g_akg2mal_vcrp_bound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_558" name="g_akg2mal_vcrp_unbound" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="mu" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_g_cAMPdegr" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_585" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_g_cra" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_583" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_g_crp" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_554" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_g_cya" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_g_emp" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_emp_Kcra))*g_emp_vcra_unbound+Cra*Cell/(Cra*Cell+g_emp_Kcra)*g_emp_vcra_bound+(1-CrpcAMP*Cell/(CrpcAMP*Cell+g_emp_Kcrp))*g_emp_vcrp_unbound+CrpcAMP*Cell/(CrpcAMP*Cell+g_emp_Kcrp)*g_emp_vcrp_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_588" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_586" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_596" name="CrpcAMP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_578" name="bm_k_expr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="g_emp_Kcra" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="g_emp_Kcrp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="g_emp_vcra_bound" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="g_emp_vcra_unbound" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="g_emp_vcrp_bound" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="g_emp_vcrp_unbound" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="mu" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_g_eno" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_eno_Kcra))*g_eno_vcra_unbound+Cra*Cell/(Cra*Cell+g_eno_Kcra)*g_eno_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_591" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_595" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_603" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_587" name="g_eno_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="g_eno_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="g_eno_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_g_fdp" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_fdp_Kcra))*g_fdp_vcra_unbound+Cra*Cell/(Cra*Cell+g_fdp_Kcra)*g_fdp_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_601" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_593" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_606" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="g_fdp_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="g_fdp_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="g_fdp_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_g_gltA" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-(CrpcAMP*Cell)^g_gltA_n/((CrpcAMP*Cell)^g_gltA_n+g_gltA_Kcrp^g_gltA_n))*g_gltA_vcrp_unbound+(CrpcAMP*Cell)^g_gltA_n/((CrpcAMP*Cell)^g_gltA_n+g_gltA_Kcrp^g_gltA_n)*g_gltA_vcrp_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_604" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_597" name="CrpcAMP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_613" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_617" name="g_gltA_Kcrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="g_gltA_n" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="g_gltA_vcrp_bound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="g_gltA_vcrp_unbound" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="mu" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_g_icd" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_icd_Kcra))*g_icd_vcra_unbound+Cra*Cell/(Cra*Cell+g_icd_Kcra)*g_icd_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_607" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_614" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_622" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="g_icd_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="g_icd_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="g_icd_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_g_iclr" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_628" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_g_mdh" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-CrpcAMP*Cell/(CrpcAMP*Cell+g_mdh_Kcrp))*g_mdh_vcrp_unbound+CrpcAMP*Cell/(CrpcAMP*Cell+g_mdh_Kcrp)*g_mdh_vcrp_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_629" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_616" name="CrpcAMP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="g_mdh_Kcrp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_635" name="g_mdh_vcrp_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="g_mdh_vcrp_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_g_me" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*SS_Me/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_624" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_620" name="SS_Me" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_632" name="d_k_degr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="mu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_g_pckA" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_pckA_Kcra))*g_pckA_vcra_unbound+Cra*Cell/(Cra*Cell+g_pckA_Kcra)*g_pckA_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_640" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_638" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_637" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="g_pckA_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="g_pckA_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="g_pckA_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="function_4_g_pdh" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-PdhR*Cell/(PdhR*Cell+g_pdh_Kpdhr))*g_pdh_vpdhr_unbound+PdhR*Cell/(PdhR*Cell+g_pdh_Kpdhr)*g_pdh_vpdhr_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_589" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_639" name="PdhR" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_647" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="g_pdh_Kpdhr" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_653" name="g_pdh_vpdhr_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_651" name="g_pdh_vpdhr_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="function_4_g_pdhr" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_654" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="function_4_g_pfkA" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_pfkA_Kcra))*g_pfkA_vcra_unbound+Cra*Cell/(Cra*Cell+g_pfkA_Kcra)*g_pfkA_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_655" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_641" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_652" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_657" name="g_pfkA_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="g_pfkA_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_659" name="g_pfkA_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_648" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="function_4_g_ppc" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*SS_Ppc/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_650" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_645" name="SS_Ppc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_658" name="d_k_degr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="mu" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function_4_g_ppsA" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_ppsA_Kcra))*g_ppsA_vcra_unbound+Cra*Cell/(Cra*Cell+g_ppsA_Kcra)*g_ppsA_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_666" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_664" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_663" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_668" name="g_ppsA_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="g_ppsA_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_670" name="g_ppsA_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="function_4_g_pykF" type="UserDefined" reversible="false">
      <Expression>
        bm_k_expr*mu*((1-Cra*Cell/(Cra*Cell+g_pykF_Kcra))*g_pykF_vcra_unbound+Cra*Cell/(Cra*Cell+g_pykF_Kcra)*g_pykF_vcra_bound)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_634" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_665" name="Cra" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_673" name="bm_k_expr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="g_pykF_Kcra" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_679" name="g_pykF_vcra_bound" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="g_pykF_vcra_unbound" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_669" name="mu" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_4_g_EIIA" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_680" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function_4_g_EIICB" type="UserDefined" reversible="false">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_678" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function_4_d_AceA" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*AceA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_671" name="AceA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_660" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_d_AceB" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*AceB
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_683" name="AceB" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_674" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_681" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="function_4_d_AceK" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*AceK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_686" name="AceK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_667" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_684" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="function_4_d_Acoa2act" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_687" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="function_4_d_Acs" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Acs
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_690" name="Acs" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_688" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_685" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="function_4_d_Akg2mal" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Akg2mal
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_693" name="Akg2mal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_682" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_691" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="function_4_d_CAMPdegr" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_694" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="function_4_d_Cra" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_692" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="function_4_d_CraFBP" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="function_4_d_Crp" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_695" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="function_4_d_CrpcAMP" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_696" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="function_4_d_Cya" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_697" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="function_4_d_Emp" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Emp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_702" name="Emp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_700" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_698" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="function_4_d_Eno" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Eno
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_705" name="Eno" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_699" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="function_4_d_Fdp" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Fdp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_708" name="Fdp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_701" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="function_4_d_GltA" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*GltA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_711" name="GltA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_704" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_709" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="function_4_d_Icd" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Icd
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_714" name="Icd" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_707" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_712" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="function_4_d_Icd_P" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Icd_P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_717" name="Icd_P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_710" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_715" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="function_4_d_IclR" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_718" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="function_4_d_Mdh" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Mdh
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_721" name="Mdh" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_719" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_716" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="function_4_d_Me" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Me
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_724" name="Me" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_713" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="function_4_d_PckA" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*PckA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_727" name="PckA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_720" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_725" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="function_4_d_Pdh" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Pdh
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_730" name="Pdh" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_723" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_728" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="function_4_d_PdhR" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_731" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="function_4_d_PdhRPYR" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_729" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="function_4_d_PfkA" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*PfkA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_735" name="PfkA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_733" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_726" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="function_4_d_Ppc" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*Ppc
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_738" name="Ppc" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_732" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="function_4_d_PpsA" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*PpsA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_741" name="PpsA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_734" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_739" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="function_4_d_PykF" type="UserDefined" reversible="false">
      <Expression>
        (mu+d_k_degr)*PykF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_744" name="PykF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_737" name="d_k_degr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_742" name="mu" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="function_4_d_EIIA" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_745" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="function_4_d_EIIA_P" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_743" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="function_4_d_EIICB" type="UserDefined" reversible="unspecified">
      <Expression>
        0/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_740" name="Cell" order="0" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="function_4_env_growth" type="UserDefined" reversible="false">
      <Expression>
        BM*mu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_746" name="BM" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_748" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="function_4_env_GLCup" type="UserDefined" reversible="false">
      <Expression>
        env_uc*env_M_GLC*BM*pts_k4*(EIICB*Cell)*(EIIA_P*Cell)*GLC/((pts_KEIIA+EIIA_P*Cell)*(pts_Kglc+GLC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_752" name="BM" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_758" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_760" name="EIIA_P" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_756" name="EIICB" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_762" name="GLC" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_750" name="env_M_GLC" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="env_uc" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_764" name="pts_KEIIA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_766" name="pts_Kglc" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_754" name="pts_k4" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="function_4_env_ACTup" type="UserDefined" reversible="false">
      <Expression>
        env_uc*env_M_ACT*BM*(Acs*Cell)*e_Acs_kcat*ACT/(ACT+e_Acs_Kact)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_770" name="ACT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_755" name="Acs" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_759" name="BM" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_751" name="Cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_772" name="e_Acs_Kact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_768" name="e_Acs_kcat" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="env_M_ACT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_767" name="env_uc" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="function_4_env_ACTex" type="UserDefined" reversible="false">
      <Expression>
        env_uc*env_M_ACT*BM*(Acoa2act*Cell)*e_Acoa2act_kcat*(ACoA*Cell)/e_Acoa2act_Kacoa*(1+ACoA*Cell/e_Acoa2act_Kacoa)^(e_Acoa2act_n-1)/((1+ACoA*Cell/e_Acoa2act_Kacoa)^e_Acoa2act_n+e_Acoa2act_L/(1+PYR*Cell/e_Acoa2act_Kpyr)^e_Acoa2act_n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_778" name="ACoA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_761" name="Acoa2act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_753" name="BM" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_774" name="Cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_786" name="PYR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_780" name="e_Acoa2act_Kacoa" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_788" name="e_Acoa2act_Kpyr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_784" name="e_Acoa2act_L" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_776" name="e_Acoa2act_kcat" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_782" name="e_Acoa2act_n" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_769" name="env_M_ACT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_773" name="env_uc" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Kotte2010_Ecoli_Metabolic_Adaption" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:20212527"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-03-14T23:34:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-08T12:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006083"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006094"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006096"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006097"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008965"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000244"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1003100000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0010906"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0045734"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:562"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This is the model described in:      <b>Bacterial adaptation through distributed sensing of metabolic fluxes</b>
    <br />
          Oliver Kotte, Judith B Zaugg  and  Matthias Heinemann;      <em>Mol Sys Biol</em>
          2010;      <b>6</b>
          :355.   doi:      <a href="http://dx.doi.org/10.1038/msb.2010.10">10.1038/msb.2010.10</a>
          ;      <br />
    <b>Abstract:</b>
    <br />
          The recognition of carbon sources and the regulatory adjustments to recognized changes are of particular importance for bacterial survival in fluctuating environments. Despite a thorough knowledge base of Escherichia coli&apos;s central metabolism and its regulation, fundamental aspects of the employed sensing and regulatory adjustment mechanisms remain unclear. In this paper, using a differential equation model that couples enzymatic and transcriptional regulation of E. coli&apos;s central metabolism, we show that the interplay of known interactions explains in molecular-level detail the system-wide adjustments of metabolic operation between glycolytic and gluconeogenic carbon sources. We show that these adaptations are enabled by an indirect recognition of carbon sources through a mechanism we termed distributed sensing of intracellular metabolic fluxes. This mechanism uses two general motifs to establish flux-signaling metabolites, whose bindings to transcription factors form flux sensors. As these sensors are embedded in global feedback loop architectures, closed-loop self-regulation can emerge within metabolism itself and therefore, metabolic operation may adapt itself autonomously (not requiring upstream sensing and signaling) to fluctuating carbon sources.      </p>
    <p>In its current form this SBML model is parametrized for the glucose to acetate transition and to simulate the extended diauxic shift as shown in figure 3 and scenario 6 of the attached matlab file. In this scenario the cells first are grown from an OD600 (BM) of 0.03 with a starting glucose concentration of 0.5 g/l for 8.15 h (29340 sec). Then a medium containing 5 g/l acetate is inoculated with these cells to an OD600 of 0.03 and grown for another 19.7 hours (70920 sec). Finally the cells are shifted to a medium containing both glucose and acetate at a concentration of 3 g/l with a starting OD600 of 0.0005.      <br />
          The shifts where implemented using events triggering at the times determined by the parameters      <em>shift1</em>
          and      <em>shift2</em>
          (in hours). To simulate other scenarios the initial conditions need to be changed as described in the supplemental materials (      <a href="http://www.nature.com/msb/journal/v6/n1/extref/msb201010-s1.pdf">supplement 1</a>
          )      <br />
          The original SBML model and the MATLAB file used for the calculations can be down loaded as supplementary materials of the publication from the MSB website. (      <a href="http://www.nature.com/msb/journal/v6/n1/extref/msb201010-s2.zip">supplement 2</a>
          ).      </p>
    <p>The units of the external metabolites are in [g/l], those of the biomass in optical density,OD      <sub>600</sub>
          , taken as dimensionless, and [micromole/(gramm dry weight)] for all intracellular metabolites. As the latter cannot be implemented in SBML, it was chosen to be micromole only and the units of the parameters are left mostly undefined.      </p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models. It is copyright (c) 2005-2010 The BioModels Team.      <br />
          For more information see the      <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>
          .      <br />
          To cite BioModels Database, please use      <a href="http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&amp;pubmedid=16381960" target="_blank">Le Novère N., Bornstein B., Broicher A., Courtot M., Donizelli M., Dharuri H., Li L., Sauro H., Schilstra M., Shapiro B., Snoep J.L., Hucka M. (2006) BioModels Database: A Free, Centralized Database of Curated, Published, Quantitative Kinetic Models of Biochemical and Cellular Systems Nucleic Acids Res., 34: D689-D691.</a>
  </p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Environment" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005576" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005623" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="BM" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_1" name="ACT" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00033" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15366" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="GLC" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00293" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="ACoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00024" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A15351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="AKG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00026" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16810" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cAMP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00575" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17489" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="FBP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00354" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16905" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="G6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00092" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A14314" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="GLX" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00048" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16891" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="ICT" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00311" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A30887" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="MAL" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00497" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A30796" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="OAA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00036" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A30744" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="PEP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00074" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A18021" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PG3" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00197" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17794" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PYR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00022" />
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A32816" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="AceA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0A9G6" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="AceB" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q8X609" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="AceK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P11071" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Acoa2act" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Acs" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P27550" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Akg2mal" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="CAMPdegr" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Cya" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P00936" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Emp" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Eno" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0A6P9" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Fdp" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P00637" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="GltA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ABH7" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Icd" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P08200" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Icd_P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P08200" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Mdh" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P61889" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Me" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P76558" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="PckA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q8GH15" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Pdh" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0AFG8" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="PfkA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P06999" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Ppc" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:Q9XHC7" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PpsA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:B5Z9Q0" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="PykF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0AD61" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Cra" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACP1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="CraFBP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A16905" />
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACP1" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Crp" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACJ8" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="CrpcAMP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A17489" />
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACJ8" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="IclR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P16528" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="PdhR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACM1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="PdhRPYR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.chebi:CHEBI%3A32816" />
        <rdf:li rdf:resource="urn:miriam:uniprot:P0ACM1" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="EIIA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0009401" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P00550" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="EIIA_P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0009401" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P00550" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="EIICB" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0009401" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P00550" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="env_M_ACT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="env_M_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="env_uc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="e_AceA_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="e_AceA_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="e_AceA_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="e_AceA_Kict" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="e_AceA_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="e_AceA_Kpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="e_AceA_Kakg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="e_AceB_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="e_AceB_Kglx" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="e_AceB_Kacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="e_AceB_Kglxacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="e_AceK_kcat_ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="e_AceK_kcat_ph" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="e_AceK_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="e_AceK_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="e_AceK_Kicd" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="e_AceK_Kicd_P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="e_AceK_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="e_AceK_Kpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="e_AceK_Koaa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="e_AceK_Kglx" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="e_AceK_Kakg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="e_AceK_Kpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="e_AceK_Kict" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="e_Acoa2act_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="e_Acoa2act_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="e_Acoa2act_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="e_Acoa2act_Kacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="e_Acoa2act_Kpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="e_Acs_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="e_Acs_Kact" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="e_Akg2mal_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="e_Akg2mal_Kakg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="e_CAMPdegr_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="e_CAMPdegr_KcAMP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="e_Cya_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="e_Cya_KEIIA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="e_Emp_kcat_f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="e_Emp_kcat_r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="e_Emp_Kfbp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="e_Emp_Kpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="e_Eno_kcatf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="e_Eno_kcatr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="e_Eno_Kpg3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="e_Eno_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="e_Fdp_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="e_Fdp_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="e_Fdp_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="e_Fdp_Kfbp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="e_Fdp_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="e_GltA_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="e_GltA_Koaa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="e_GltA_Kacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="e_GltA_Koaaacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="e_GltA_Kakg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="e_Icd_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="e_Icd_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="e_Icd_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="e_Icd_Kict" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="e_Icd_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="e_Mdh_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="e_Mdh_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="e_Mdh_Kmal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="e_Me_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="e_Me_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="e_Me_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="e_Me_Kmal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="e_Me_Kacoa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="e_Me_Kcamp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="e_PckA_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="e_PckA_Koaa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="e_PckA_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="e_Pdh_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="e_Pdh_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="e_Pdh_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="e_Pdh_Kpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="e_Pdh_KpyrI" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="e_Pdh_Kglx" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="e_PfkA_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="e_PfkA_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="e_PfkA_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="e_PfkA_Kg6p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="e_PfkA_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="e_Ppc_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="e_Ppc_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="e_Ppc_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="e_Ppc_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="e_Ppc_Kfbp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="e_PpsA_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="e_PpsA_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="e_PpsA_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="e_PpsA_Kpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="e_PpsA_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="e_PykF_kcat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="e_PykF_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="e_PykF_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="e_PykF_Kpep" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="e_PykF_Kfbp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="pts_k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="pts_km1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="pts_k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="pts_KEIIA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="pts_Kglc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="tf_Cra_scale" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="tf_Cra_kfbp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="tf_Cra_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="tf_Crp_scale" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="tf_Crp_kcamp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="tf_Crp_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="tf_PdhR_scale" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="tf_PdhR_kpyr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="tf_PdhR_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="g_aceBAK_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="g_aceBAK_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="g_aceBAK_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="g_aceBAK_aceBfactor" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="g_aceBAK_aceKfactor" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="g_aceBAK_KDNA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="g_aceBAK_KP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="g_aceBAK_KPprime" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="g_aceBAK_KG" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="g_aceBAK_L" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="g_aceBAK_kcat_iclr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="g_aceBAK_DNA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="g_aceBAK_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="g_aceBAK_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="g_aceBAK_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="g_acs_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="g_acs_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="g_acs_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="g_acs_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="g_akg2mal_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="g_akg2mal_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="g_akg2mal_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="g_akg2mal_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="g_emp_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_139" name="g_emp_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="g_emp_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_141" name="g_emp_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="g_emp_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="g_emp_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="g_eno_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="g_eno_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="g_eno_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="g_fdp_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="g_fdp_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="g_fdp_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="g_gltA_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="g_gltA_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="g_gltA_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="g_gltA_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="g_icd_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="g_icd_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="g_icd_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="g_mdh_vcrp_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_158" name="g_mdh_vcrp_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_159" name="g_mdh_Kcrp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_160" name="g_pckA_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="g_pckA_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="g_pckA_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_163" name="g_pdh_vpdhr_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_164" name="g_pdh_vpdhr_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_165" name="g_pdh_Kpdhr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_166" name="g_pfkA_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_167" name="g_pfkA_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_168" name="g_pfkA_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_169" name="g_ppsA_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_170" name="g_ppsA_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_171" name="g_ppsA_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_172" name="g_pykF_vcra_unbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_173" name="g_pykF_vcra_bound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_174" name="g_pykF_Kcra" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_175" name="d_k_degr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_176" name="bm_k_expr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_177" name="bm_muACT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_178" name="bm_muGLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_179" name="bm_GLC_ACoA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_180" name="bm_GLC_AKG" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_181" name="bm_GLC_G6P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_182" name="bm_GLC_OAA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_183" name="bm_GLC_PEP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_184" name="bm_GLC_PG3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_185" name="bm_GLC_PYR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_186" name="bm_ACT_ACoA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_187" name="bm_ACT_AKG" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_188" name="bm_ACT_G6P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_189" name="bm_ACT_OAA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_190" name="bm_ACT_PEP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_191" name="bm_ACT_PG3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_192" name="bm_ACT_PYR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_193" name="alphaGLC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[GLC],Reference=Concentration&gt;/(&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[GLC],Reference=Concentration&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_Kglc],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="alphaACT" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[ACT],Reference=Concentration&gt;/(&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[ACT],Reference=Concentration&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acs_Kact],Reference=Value&gt;)*(1-&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[GLC],Reference=Concentration&gt;/(&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[GLC],Reference=Concentration&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_Kglc],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="mu" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_muGLC],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_muACT],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="k_bm_ACoA" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_ACoA],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_ACoA],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="k_bm_AKG" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_AKG],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_AKG],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="k_bm_G6P" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_G6P],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_G6P],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="k_bm_OAA" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_OAA],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_OAA],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="k_bm_PEP" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PEP],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PEP],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="k_bm_PG3" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PG3],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PG3],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="k_bm_PYR" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PYR],Reference=Value&gt;+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PYR],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="SS_Me" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*0.000999714+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*0.00339935
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="SS_Ppc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaGLC],Reference=Value&gt;*0.000999714+&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[alphaACT],Reference=Value&gt;*0.000279893
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="shift1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_206" name="shift2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_207" name="GLC_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_208" name="GLC_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_209" name="ACT_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_210" name="ACT_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_211" name="BM_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_212" name="BM_2" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="bm_ACoA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4038" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="bm_AKG" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4039" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="bm_G6P" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4040" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="bm_OAA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4041" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="bm_PEP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4042" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="bm_PG3" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4043" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="bm_PYR" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4044" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="pts_r1" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0009401" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4045" name="pts_k1" value="1"/>
          <Constant key="Parameter_4046" name="pts_km1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="pts_r4" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0009401" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4047" name="pts_KEIIA" value="1"/>
          <Constant key="Parameter_4048" name="pts_Kglc" value="1"/>
          <Constant key="Parameter_4049" name="pts_k4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="e_AceK_Ki" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006468" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4050" name="e_AceK_Kakg" value="1"/>
          <Constant key="Parameter_4051" name="e_AceK_Kglx" value="1"/>
          <Constant key="Parameter_4052" name="e_AceK_Kicd" value="1"/>
          <Constant key="Parameter_4053" name="e_AceK_Kict" value="1"/>
          <Constant key="Parameter_4054" name="e_AceK_Koaa" value="1"/>
          <Constant key="Parameter_4055" name="e_AceK_Kpep" value="1"/>
          <Constant key="Parameter_4056" name="e_AceK_Kpg3" value="1"/>
          <Constant key="Parameter_4057" name="e_AceK_Kpyr" value="1"/>
          <Constant key="Parameter_4058" name="e_AceK_L" value="1"/>
          <Constant key="Parameter_4059" name="e_AceK_kcat_ki" value="1"/>
          <Constant key="Parameter_4060" name="e_AceK_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="e_AceK_Ph" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4061" name="e_AceK_Kakg" value="1"/>
          <Constant key="Parameter_4062" name="e_AceK_Kicd_P" value="1"/>
          <Constant key="Parameter_4063" name="e_AceK_Koaa" value="1"/>
          <Constant key="Parameter_4064" name="e_AceK_Kpep" value="1"/>
          <Constant key="Parameter_4067" name="e_AceK_Kpg3" value="1"/>
          <Constant key="Parameter_4066" name="e_AceK_Kpyr" value="1"/>
          <Constant key="Parameter_4068" name="e_AceK_L" value="1"/>
          <Constant key="Parameter_4065" name="e_AceK_kcat_ph" value="1"/>
          <Constant key="Parameter_4069" name="e_AceK_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="tf_Cra" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4070" name="tf_Cra_kfbp" value="1"/>
          <Constant key="Parameter_4071" name="tf_Cra_n" value="1"/>
          <Constant key="Parameter_4072" name="tf_Cra_scale" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="tf_Crp" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4073" name="tf_Crp_kcamp" value="1"/>
          <Constant key="Parameter_4074" name="tf_Crp_n" value="1"/>
          <Constant key="Parameter_4075" name="tf_Crp_scale" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="tf_PdhR" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0043234" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4076" name="tf_PdhR_kpyr" value="1"/>
          <Constant key="Parameter_4077" name="tf_PdhR_n" value="1"/>
          <Constant key="Parameter_4078" name="tf_PdhR_scale" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="e_AceA" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00267" />
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00479" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4079" name="e_AceA_Kakg" value="1"/>
          <Constant key="Parameter_4080" name="e_AceA_Kict" value="1"/>
          <Constant key="Parameter_4081" name="e_AceA_Kpep" value="1"/>
          <Constant key="Parameter_4082" name="e_AceA_Kpg3" value="1"/>
          <Constant key="Parameter_4083" name="e_AceA_L" value="1"/>
          <Constant key="Parameter_4084" name="e_AceA_kcat" value="1"/>
          <Constant key="Parameter_4089" name="e_AceA_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="e_AceB" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00472" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4088" name="e_AceB_Kacoa" value="1"/>
          <Constant key="Parameter_4087" name="e_AceB_Kglx" value="1"/>
          <Constant key="Parameter_4085" name="e_AceB_Kglxacoa" value="1"/>
          <Constant key="Parameter_4086" name="e_AceB_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="e_Acoa2act" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.reaction:R00227" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4090" name="e_Acoa2act_Kacoa" value="1"/>
          <Constant key="Parameter_4091" name="e_Acoa2act_Kpyr" value="1"/>
          <Constant key="Parameter_4094" name="e_Acoa2act_L" value="1"/>
          <Constant key="Parameter_4093" name="e_Acoa2act_kcat" value="1"/>
          <Constant key="Parameter_4092" name="e_Acoa2act_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="e_Acs" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4095" name="e_Acs_Kact" value="1"/>
          <Constant key="Parameter_4096" name="e_Acs_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="e_Akg2mal" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4097" name="e_Akg2mal_Kakg" value="1"/>
          <Constant key="Parameter_4098" name="e_Akg2mal_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="e_CAMPdegr" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4099" name="e_CAMPdegr_KcAMP" value="1"/>
          <Constant key="Parameter_4100" name="e_CAMPdegr_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="e_Cya" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4101" name="e_Cya_KEIIA" value="1"/>
          <Constant key="Parameter_4102" name="e_Cya_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="e_Emp" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="0.5"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4103" name="e_Emp_Kfbp" value="1"/>
          <Constant key="Parameter_4104" name="e_Emp_Kpg3" value="1"/>
          <Constant key="Parameter_4105" name="e_Emp_kcat_f" value="1"/>
          <Constant key="Parameter_4106" name="e_Emp_kcat_r" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="e_Eno" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4107" name="e_Eno_Kpep" value="1"/>
          <Constant key="Parameter_4108" name="e_Eno_Kpg3" value="1"/>
          <Constant key="Parameter_4109" name="e_Eno_kcatf" value="1"/>
          <Constant key="Parameter_4110" name="e_Eno_kcatr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="e_Fdp" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4111" name="e_Fdp_Kfbp" value="1"/>
          <Constant key="Parameter_4112" name="e_Fdp_Kpep" value="1"/>
          <Constant key="Parameter_4113" name="e_Fdp_L" value="1"/>
          <Constant key="Parameter_4114" name="e_Fdp_kcat" value="1"/>
          <Constant key="Parameter_4115" name="e_Fdp_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="e_GltA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4116" name="e_GltA_Kacoa" value="1"/>
          <Constant key="Parameter_4117" name="e_GltA_Kakg" value="1"/>
          <Constant key="Parameter_4118" name="e_GltA_Koaa" value="1"/>
          <Constant key="Parameter_4119" name="e_GltA_Koaaacoa" value="1"/>
          <Constant key="Parameter_4132" name="e_GltA_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="e_Icd" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4133" name="e_Icd_Kict" value="1"/>
          <Constant key="Parameter_4134" name="e_Icd_Kpep" value="1"/>
          <Constant key="Parameter_4135" name="e_Icd_L" value="1"/>
          <Constant key="Parameter_4136" name="e_Icd_kcat" value="1"/>
          <Constant key="Parameter_4027" name="e_Icd_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="e_Mdh" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4028" name="e_Mdh_Kmal" value="1"/>
          <Constant key="Parameter_4029" name="e_Mdh_kcat" value="1"/>
          <Constant key="Parameter_4030" name="e_Mdh_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="e_Me" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4031" name="e_Me_Kacoa" value="1"/>
          <Constant key="Parameter_4032" name="e_Me_Kcamp" value="1"/>
          <Constant key="Parameter_4033" name="e_Me_Kmal" value="1"/>
          <Constant key="Parameter_4034" name="e_Me_L" value="1"/>
          <Constant key="Parameter_4035" name="e_Me_kcat" value="1"/>
          <Constant key="Parameter_4036" name="e_Me_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="e_PckA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4137" name="e_PckA_Koaa" value="1"/>
          <Constant key="Parameter_4138" name="e_PckA_Kpep" value="1"/>
          <Constant key="Parameter_3926" name="e_PckA_kcat" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="e_Pdh" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3925" name="e_Pdh_Kglx" value="1"/>
          <Constant key="Parameter_3924" name="e_Pdh_Kpyr" value="1"/>
          <Constant key="Parameter_3923" name="e_Pdh_KpyrI" value="1"/>
          <Constant key="Parameter_3922" name="e_Pdh_L" value="1"/>
          <Constant key="Parameter_3921" name="e_Pdh_kcat" value="1"/>
          <Constant key="Parameter_3920" name="e_Pdh_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="e_PfkA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3919" name="e_PfkA_Kg6p" value="1"/>
          <Constant key="Parameter_3918" name="e_PfkA_Kpep" value="1"/>
          <Constant key="Parameter_3917" name="e_PfkA_L" value="1"/>
          <Constant key="Parameter_3916" name="e_PfkA_kcat" value="1"/>
          <Constant key="Parameter_3915" name="e_PfkA_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="e_Ppc" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3914" name="e_Ppc_Kfbp" value="1"/>
          <Constant key="Parameter_3913" name="e_Ppc_Kpep" value="1"/>
          <Constant key="Parameter_3912" name="e_Ppc_L" value="1"/>
          <Constant key="Parameter_3911" name="e_Ppc_kcat" value="1"/>
          <Constant key="Parameter_3910" name="e_Ppc_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="e_PpsA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3909" name="e_PpsA_Kpep" value="1"/>
          <Constant key="Parameter_3908" name="e_PpsA_Kpyr" value="1"/>
          <Constant key="Parameter_3907" name="e_PpsA_L" value="1"/>
          <Constant key="Parameter_3906" name="e_PpsA_kcat" value="1"/>
          <Constant key="Parameter_3905" name="e_PpsA_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="e_PykF" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3904" name="e_PykF_Kfbp" value="1"/>
          <Constant key="Parameter_3903" name="e_PykF_Kpep" value="1"/>
          <Constant key="Parameter_3902" name="e_PykF_L" value="1"/>
          <Constant key="Parameter_3901" name="e_PykF_kcat" value="1"/>
          <Constant key="Parameter_3900" name="e_PykF_n" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="g_aceA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3899" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3898" name="g_aceBAK_DNA" value="1"/>
          <Constant key="Parameter_3897" name="g_aceBAK_KDNA" value="1"/>
          <Constant key="Parameter_3896" name="g_aceBAK_KG" value="1"/>
          <Constant key="Parameter_3895" name="g_aceBAK_KP" value="1"/>
          <Constant key="Parameter_3894" name="g_aceBAK_KPprime" value="1"/>
          <Constant key="Parameter_3893" name="g_aceBAK_Kcra" value="1"/>
          <Constant key="Parameter_3892" name="g_aceBAK_Kcrp" value="1"/>
          <Constant key="Parameter_3891" name="g_aceBAK_L" value="1"/>
          <Constant key="Parameter_3890" name="g_aceBAK_kcat_iclr" value="1"/>
          <Constant key="Parameter_3889" name="g_aceBAK_vcra_bound" value="1"/>
          <Constant key="Parameter_3888" name="g_aceBAK_vcra_unbound" value="1"/>
          <Constant key="Parameter_3887" name="g_aceBAK_vcrp_bound" value="1"/>
          <Constant key="Parameter_3886" name="g_aceBAK_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3885" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="g_aceB" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3884" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3883" name="g_aceBAK_DNA" value="1"/>
          <Constant key="Parameter_3882" name="g_aceBAK_KDNA" value="1"/>
          <Constant key="Parameter_3881" name="g_aceBAK_KG" value="1"/>
          <Constant key="Parameter_3880" name="g_aceBAK_KP" value="1"/>
          <Constant key="Parameter_3879" name="g_aceBAK_KPprime" value="1"/>
          <Constant key="Parameter_3878" name="g_aceBAK_Kcra" value="1"/>
          <Constant key="Parameter_3877" name="g_aceBAK_Kcrp" value="1"/>
          <Constant key="Parameter_3876" name="g_aceBAK_L" value="1"/>
          <Constant key="Parameter_3875" name="g_aceBAK_aceBfactor" value="1"/>
          <Constant key="Parameter_3874" name="g_aceBAK_kcat_iclr" value="1"/>
          <Constant key="Parameter_3873" name="g_aceBAK_vcra_bound" value="1"/>
          <Constant key="Parameter_3872" name="g_aceBAK_vcra_unbound" value="1"/>
          <Constant key="Parameter_3871" name="g_aceBAK_vcrp_bound" value="1"/>
          <Constant key="Parameter_3870" name="g_aceBAK_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3869" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="g_aceK" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3868" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3867" name="g_aceBAK_DNA" value="1"/>
          <Constant key="Parameter_3866" name="g_aceBAK_KDNA" value="1"/>
          <Constant key="Parameter_3865" name="g_aceBAK_KG" value="1"/>
          <Constant key="Parameter_3864" name="g_aceBAK_KP" value="1"/>
          <Constant key="Parameter_3863" name="g_aceBAK_KPprime" value="1"/>
          <Constant key="Parameter_3862" name="g_aceBAK_Kcra" value="1"/>
          <Constant key="Parameter_3861" name="g_aceBAK_Kcrp" value="1"/>
          <Constant key="Parameter_3860" name="g_aceBAK_L" value="1"/>
          <Constant key="Parameter_3859" name="g_aceBAK_aceKfactor" value="1"/>
          <Constant key="Parameter_3858" name="g_aceBAK_kcat_iclr" value="1"/>
          <Constant key="Parameter_3857" name="g_aceBAK_vcra_bound" value="1"/>
          <Constant key="Parameter_3856" name="g_aceBAK_vcra_unbound" value="1"/>
          <Constant key="Parameter_3855" name="g_aceBAK_vcrp_bound" value="1"/>
          <Constant key="Parameter_3854" name="g_aceBAK_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3853" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="g_acoa2act" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="g_acs" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3852" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3851" name="g_acs_Kcrp" value="1"/>
          <Constant key="Parameter_3850" name="g_acs_n" value="1"/>
          <Constant key="Parameter_3849" name="g_acs_vcrp_bound" value="1"/>
          <Constant key="Parameter_3848" name="g_acs_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3847" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="g_akg2mal" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3846" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3845" name="g_akg2mal_Kcrp" value="1"/>
          <Constant key="Parameter_3844" name="g_akg2mal_n" value="1"/>
          <Constant key="Parameter_3843" name="g_akg2mal_vcrp_bound" value="1"/>
          <Constant key="Parameter_3842" name="g_akg2mal_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3841" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="g_cAMPdegr" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="g_cra" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="g_crp" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="g_cya" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="g_emp" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3840" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3839" name="g_emp_Kcra" value="1"/>
          <Constant key="Parameter_3838" name="g_emp_Kcrp" value="1"/>
          <Constant key="Parameter_3837" name="g_emp_vcra_bound" value="1"/>
          <Constant key="Parameter_3836" name="g_emp_vcra_unbound" value="1"/>
          <Constant key="Parameter_3835" name="g_emp_vcrp_bound" value="1"/>
          <Constant key="Parameter_3834" name="g_emp_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3833" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="g_eno" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3832" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3831" name="g_eno_Kcra" value="1"/>
          <Constant key="Parameter_3830" name="g_eno_vcra_bound" value="1"/>
          <Constant key="Parameter_3829" name="g_eno_vcra_unbound" value="1"/>
          <Constant key="Parameter_3828" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="g_fdp" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3827" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3826" name="g_fdp_Kcra" value="1"/>
          <Constant key="Parameter_3825" name="g_fdp_vcra_bound" value="1"/>
          <Constant key="Parameter_3824" name="g_fdp_vcra_unbound" value="1"/>
          <Constant key="Parameter_3823" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="g_gltA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3822" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3821" name="g_gltA_Kcrp" value="1"/>
          <Constant key="Parameter_3820" name="g_gltA_n" value="1"/>
          <Constant key="Parameter_3819" name="g_gltA_vcrp_bound" value="1"/>
          <Constant key="Parameter_3818" name="g_gltA_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3817" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="g_icd" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3816" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3815" name="g_icd_Kcra" value="1"/>
          <Constant key="Parameter_3814" name="g_icd_vcra_bound" value="1"/>
          <Constant key="Parameter_3813" name="g_icd_vcra_unbound" value="1"/>
          <Constant key="Parameter_3812" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="g_iclr" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="g_mdh" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3811" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3810" name="g_mdh_Kcrp" value="1"/>
          <Constant key="Parameter_3809" name="g_mdh_vcrp_bound" value="1"/>
          <Constant key="Parameter_3808" name="g_mdh_vcrp_unbound" value="1"/>
          <Constant key="Parameter_3807" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="g_me" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3806" name="SS_Me" value="1"/>
          <Constant key="Parameter_3805" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3804" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="ModelValue_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="g_pckA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3803" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3802" name="g_pckA_Kcra" value="1"/>
          <Constant key="Parameter_3801" name="g_pckA_vcra_bound" value="1"/>
          <Constant key="Parameter_3800" name="g_pckA_vcra_unbound" value="1"/>
          <Constant key="Parameter_3799" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="g_pdh" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3798" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3797" name="g_pdh_Kpdhr" value="1"/>
          <Constant key="Parameter_3796" name="g_pdh_vpdhr_bound" value="1"/>
          <Constant key="Parameter_3795" name="g_pdh_vpdhr_unbound" value="1"/>
          <Constant key="Parameter_3794" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="g_pdhr" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="g_pfkA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3793" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3792" name="g_pfkA_Kcra" value="1"/>
          <Constant key="Parameter_3791" name="g_pfkA_vcra_bound" value="1"/>
          <Constant key="Parameter_3790" name="g_pfkA_vcra_unbound" value="1"/>
          <Constant key="Parameter_3789" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="g_ppc" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3788" name="SS_Ppc" value="1"/>
          <Constant key="Parameter_3787" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3786" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_204"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="g_ppsA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3785" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3784" name="g_ppsA_Kcra" value="1"/>
          <Constant key="Parameter_3783" name="g_ppsA_vcra_bound" value="1"/>
          <Constant key="Parameter_3782" name="g_ppsA_vcra_unbound" value="1"/>
          <Constant key="Parameter_3781" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="g_pykF" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3780" name="bm_k_expr" value="1"/>
          <Constant key="Parameter_3779" name="g_pykF_Kcra" value="1"/>
          <Constant key="Parameter_3778" name="g_pykF_vcra_bound" value="1"/>
          <Constant key="Parameter_3777" name="g_pykF_vcra_unbound" value="1"/>
          <Constant key="Parameter_3776" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="g_EIIA" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="g_EIICB" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="d_AceA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3775" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3774" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="d_AceB" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3773" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3772" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="d_AceK" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3771" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3770" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="d_Acoa2act" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="d_Acs" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3769" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3768" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="d_Akg2mal" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3767" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3766" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="d_CAMPdegr" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="d_Cra" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="d_CraFBP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="d_Crp" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_103">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="d_CrpcAMP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_104">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="d_Cya" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_105">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="d_Emp" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3765" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3764" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_106">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="d_Eno" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3763" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3762" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="d_Fdp" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3761" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3760" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="d_GltA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3759" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3758" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_109">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="d_Icd" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3757" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3756" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_110">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="d_Icd_P" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3755" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3754" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_111">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="d_IclR" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_112">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="d_Mdh" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3753" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3752" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_113">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="d_Me" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3751" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3750" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_114">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="d_PckA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3749" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3748" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_115">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="d_Pdh" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3747" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3746" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="d_PdhR" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_117">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="d_PdhRPYR" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_118">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="d_PfkA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3745" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3744" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_119">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="d_Ppc" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3743" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3742" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_120">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="d_PpsA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3741" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3740" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_121">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="d_PykF" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3739" name="d_k_degr" value="1"/>
          <Constant key="Parameter_3738" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_122">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="d_EIIA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_123">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="d_EIIA_P" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_124">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="d_EIICB" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <KineticLaw function="Function_125">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="d_ACoA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3737" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="d_AKG" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3736" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="d_cAMP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3735" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="d_FBP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3734" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="d_G6P" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3733" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="d_GLX" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3732" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="d_ICT" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3731" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="d_MAL" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3730" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="d_OAA" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3729" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="d_PEP" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3728" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="d_PG3" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3727" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="d_PYR" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3726" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="env_growth" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3725" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_126">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="env_GLCup" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3724" name="env_M_GLC" value="1"/>
          <Constant key="Parameter_3723" name="env_uc" value="1"/>
          <Constant key="Parameter_3722" name="pts_KEIIA" value="1"/>
          <Constant key="Parameter_3721" name="pts_Kglc" value="1"/>
          <Constant key="Parameter_3720" name="pts_k4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_127">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="env_ACTup" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3719" name="e_Acs_Kact" value="1"/>
          <Constant key="Parameter_3718" name="e_Acs_kcat" value="1"/>
          <Constant key="Parameter_3717" name="env_M_ACT" value="1"/>
          <Constant key="Parameter_3716" name="env_uc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_128">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="env_ACTex" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3715" name="e_Acoa2act_Kacoa" value="1"/>
          <Constant key="Parameter_3714" name="e_Acoa2act_Kpyr" value="1"/>
          <Constant key="Parameter_3713" name="e_Acoa2act_L" value="1"/>
          <Constant key="Parameter_3712" name="e_Acoa2act_kcat" value="1"/>
          <Constant key="Parameter_3711" name="e_Acoa2act_n" value="1"/>
          <Constant key="Parameter_3710" name="env_M_ACT" value="1"/>
          <Constant key="Parameter_3709" name="env_uc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_129">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_773">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="first shift" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Reference=Time&gt; ge 3600*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[shift1],Reference=Value&gt;
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[GLC_1],Reference=Value&gt;
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[ACT_1],Reference=Value&gt;
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[BM_1],Reference=Value&gt;/&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Reference=Volume&gt;
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="second shift" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Reference=Time&gt; ge 3600*&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[shift2],Reference=Value&gt;
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[GLC_2],Reference=Value&gt;
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[ACT_2],Reference=Value&gt;
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_0">
            <Expression>
              &lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[BM_2],Reference=Value&gt;/&lt;CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Reference=Volume&gt;
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
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
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.267395143877084e+17 2.119627084708133e+17 5.198782628586172e+17 3.043310671958436e+16 1.151377016535868e+17 1.149109435652976e+18 1.974527284906355e+18 2583973974897231 3.445253620697499e+18 5.809985950237553e+16 1.221315033749055e+17 180121056510542 3579123270267867 700864690304527 847987420876764 3436191950.38147 3.959583562075511e+18 85331942521763 602214179000000 660160431731738 618382425277792 602214179000000 602214179000000 6934853384193147 6957267795935527 94843915479068 620046945268548 853318823003451 2082017014631330 602041945744806 1379607644957668 2798730777698779 86608034367064 602041945744806 594682286263247 3599535319865072 0 4390141364910000 2844396076678170 1806642537000000 132774375543383 2121552375482680 4210020308399458 3689276674605473 811018094642133 2.8906280592e+18 1.806642537e+16 0.9997500624843789 0 0.0001799550112471882 1.879530117470632 0.9777555611097226 0.1539615096225944 6.398400399900026 0.4228942764308923 0.04898775306173457 0.5528617845538616 0.0009994641339665085 0.0009994641339665085 1 1 60.05 180.156 9.5e-07 614 4 50100 0.022 0.055 0.72 0.827 47.8 0.95 0.755 0.719 3400000000000 1700000000 2 100000000 0.043 0.643 0.539 0.038 0.173 0.866 0.82 1.57 0.137 3079 2 639000 0.022 0.022 340 0.001 1530 0.548 1000 0.1 993 0.0017 1000 848 5.92 16.6 695 522 4.76 1.11 192 4 4000000 0.003 0.3 1614 0.029 0.212 0.029 0.63 695 2 127 0.00016 0.334 773 1.7 10.1 1879 1.33 104000 0.00624 3.64 6.54 55.5 0.184 1000 1179 2.65 3.4 0.128 0.231 0.218 908000 4 95000000 0.022 0.138 5635 3 5200000 0.048 0.408 1.32 2 1e-79 0.00177 0.001 5749 4 100000 5 0.413 116 46.3 2520 0.008500000000000001 0.0012 100 1.36 2 100000000 0.895 1 100 0.164 1 1.9e-09 2e-06 0.00365 0.3 0.03 2.19 0.897 0.00301 0.00488 923 0.0009300000000000001 1 2.3e-10 2e-08 0.341 0 1.2e-06 2.31 0.0047 0 1.4e-06 0.091 0.74 6.2e-07 0 0.09 0 4.7e-07 0.012 6.799999999999999e-07 0 0.016 0 4.5e-08 0.00118 0 2.3e-06 0.04 1.07 1.1e-07 8.5e-07 0.00117 0 9.099999999999999e-06 0.06 0 2.5e-06 0.00535 3.6e-07 1.3e-09 0.0034 8.2e-07 6.6e-09 6.3e-07 0 3.3e-06 0.017 3.9e-07 2.1e-09 0.0023 2.8e-05 20000 5.6e-05 0.00018 1.88 0.978 0.154 6.4 0.423 0.049 0.553 0.108 0.056 0.076 1.43 0.047 0.066 5.185 8.15 27.85 0 3 5 3 0.03 0.0005 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
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
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.005"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[env_M_ACT],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="60.05"/>
            <Parameter name="UpperBound" type="cn" value="600.5"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="18.0156"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[env_M_GLC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="180.156"/>
            <Parameter name="UpperBound" type="cn" value="1801.56"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="9.5e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[env_uc],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="9.5e-07"/>
            <Parameter name="UpperBound" type="cn" value="9.5e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="61.4"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="614"/>
            <Parameter name="UpperBound" type="cn" value="6140"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="5010"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="50100"/>
            <Parameter name="UpperBound" type="cn" value="501000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0022"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_Kict],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.022"/>
            <Parameter name="UpperBound" type="cn" value="0.22"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0055"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.055"/>
            <Parameter name="UpperBound" type="cn" value="0.55"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.072"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_Kpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.72"/>
            <Parameter name="UpperBound" type="cn" value="7.2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0827"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceA_Kakg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.827"/>
            <Parameter name="UpperBound" type="cn" value="8.27"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="4.78"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceB_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="47.8"/>
            <Parameter name="UpperBound" type="cn" value="478"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.095"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceB_Kglx],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.95"/>
            <Parameter name="UpperBound" type="cn" value="9.5"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0755"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceB_Kacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.755"/>
            <Parameter name="UpperBound" type="cn" value="7.55"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0719"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceB_Kglxacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.719"/>
            <Parameter name="UpperBound" type="cn" value="7.19"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="3.4e+11"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_kcat_ki],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3400000000000"/>
            <Parameter name="UpperBound" type="cn" value="3.4e+13"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.7e+08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_kcat_ph],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1700000000"/>
            <Parameter name="UpperBound" type="cn" value="1.7e+10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e+07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="100000000"/>
            <Parameter name="UpperBound" type="cn" value="1e+09"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0043"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kicd],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.043"/>
            <Parameter name="UpperBound" type="cn" value="0.43"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0643"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kicd_P],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.643"/>
            <Parameter name="UpperBound" type="cn" value="6.43"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0539"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.539"/>
            <Parameter name="UpperBound" type="cn" value="5.39"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0038"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.038"/>
            <Parameter name="UpperBound" type="cn" value="0.38"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0173"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Koaa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.173"/>
            <Parameter name="UpperBound" type="cn" value="1.73"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0866"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kglx],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.866"/>
            <Parameter name="UpperBound" type="cn" value="8.66"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.082"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kakg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.82"/>
            <Parameter name="UpperBound" type="cn" value="8.2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.157"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.57"/>
            <Parameter name="UpperBound" type="cn" value="15.7"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0137"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_AceK_Kict],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.137"/>
            <Parameter name="UpperBound" type="cn" value="1.37"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="307.9"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acoa2act_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3079"/>
            <Parameter name="UpperBound" type="cn" value="30790"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="63900"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acoa2act_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="639000"/>
            <Parameter name="UpperBound" type="cn" value="6.39e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0022"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acoa2act_Kacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.022"/>
            <Parameter name="UpperBound" type="cn" value="0.22"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0022"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acoa2act_Kpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.022"/>
            <Parameter name="UpperBound" type="cn" value="0.22"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="34"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acs_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="340"/>
            <Parameter name="UpperBound" type="cn" value="3400"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Acs_Kact],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="0.01"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="153"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Akg2mal_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1530"/>
            <Parameter name="UpperBound" type="cn" value="15300"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0548"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Akg2mal_Kakg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.548"/>
            <Parameter name="UpperBound" type="cn" value="5.48"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_CAMPdegr_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_CAMPdegr_KcAMP],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.1"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="99.3"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Cya_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="993"/>
            <Parameter name="UpperBound" type="cn" value="9930"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00017"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Cya_KEIIA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0017"/>
            <Parameter name="UpperBound" type="cn" value="0.017"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Emp_kcat_f],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="84.8"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Emp_kcat_r],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="848"/>
            <Parameter name="UpperBound" type="cn" value="8480"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.592"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Emp_Kfbp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5.92"/>
            <Parameter name="UpperBound" type="cn" value="59.2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.66"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Emp_Kpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="16.6"/>
            <Parameter name="UpperBound" type="cn" value="166"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="69.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Eno_kcatf],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="695"/>
            <Parameter name="UpperBound" type="cn" value="6950"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="52.2"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Eno_kcatr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="522"/>
            <Parameter name="UpperBound" type="cn" value="5220"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.476"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Eno_Kpg3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.76"/>
            <Parameter name="UpperBound" type="cn" value="47.6"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.111"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Eno_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.11"/>
            <Parameter name="UpperBound" type="cn" value="11.1"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="19.2"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Fdp_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="192"/>
            <Parameter name="UpperBound" type="cn" value="1920"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="400000"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Fdp_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4000000"/>
            <Parameter name="UpperBound" type="cn" value="4e+07"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0003"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Fdp_Kfbp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.003"/>
            <Parameter name="UpperBound" type="cn" value="0.03"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.03"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Fdp_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.3"/>
            <Parameter name="UpperBound" type="cn" value="3"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="161.4"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_GltA_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1614"/>
            <Parameter name="UpperBound" type="cn" value="16140"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0029"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_GltA_Koaa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.029"/>
            <Parameter name="UpperBound" type="cn" value="0.29"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0212"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_GltA_Kacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.212"/>
            <Parameter name="UpperBound" type="cn" value="2.12"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0029"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_GltA_Koaaacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.029"/>
            <Parameter name="UpperBound" type="cn" value="0.29"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.063"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_GltA_Kakg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.63"/>
            <Parameter name="UpperBound" type="cn" value="6.3"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="69.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Icd_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="695"/>
            <Parameter name="UpperBound" type="cn" value="6950"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="12.7"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Icd_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="127"/>
            <Parameter name="UpperBound" type="cn" value="1270"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.6e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Icd_Kict],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00016"/>
            <Parameter name="UpperBound" type="cn" value="0.0016"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0334"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Icd_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.334"/>
            <Parameter name="UpperBound" type="cn" value="3.34"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="77.3"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Mdh_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="773"/>
            <Parameter name="UpperBound" type="cn" value="7730"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Mdh_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.7"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.01"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Mdh_Kmal],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="10.1"/>
            <Parameter name="UpperBound" type="cn" value="101"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="187.9"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Me_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1879"/>
            <Parameter name="UpperBound" type="cn" value="18790"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="10400"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Me_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="104000"/>
            <Parameter name="UpperBound" type="cn" value="1.04e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000624"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Me_Kmal],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00624"/>
            <Parameter name="UpperBound" type="cn" value="0.0624"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.364"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Me_Kacoa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.64"/>
            <Parameter name="UpperBound" type="cn" value="36.4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.654"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Me_Kcamp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.54"/>
            <Parameter name="UpperBound" type="cn" value="65.4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="5.55"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PckA_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="55.5"/>
            <Parameter name="UpperBound" type="cn" value="555"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0184"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PckA_Koaa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.184"/>
            <Parameter name="UpperBound" type="cn" value="1.84"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="100"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PckA_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1000"/>
            <Parameter name="UpperBound" type="cn" value="10000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="117.9"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Pdh_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1179"/>
            <Parameter name="UpperBound" type="cn" value="11790"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.34"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Pdh_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.4"/>
            <Parameter name="UpperBound" type="cn" value="34"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0128"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Pdh_Kpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.128"/>
            <Parameter name="UpperBound" type="cn" value="1.28"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0231"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Pdh_KpyrI],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.231"/>
            <Parameter name="UpperBound" type="cn" value="2.31"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0218"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Pdh_Kglx],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.218"/>
            <Parameter name="UpperBound" type="cn" value="2.18"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="90800"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PfkA_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="908000"/>
            <Parameter name="UpperBound" type="cn" value="9.08e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="9.5e+06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PfkA_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="95000000"/>
            <Parameter name="UpperBound" type="cn" value="9.5e+08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0022"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PfkA_Kg6p],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.022"/>
            <Parameter name="UpperBound" type="cn" value="0.22"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0138"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PfkA_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.138"/>
            <Parameter name="UpperBound" type="cn" value="1.38"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="563.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Ppc_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5635"/>
            <Parameter name="UpperBound" type="cn" value="56350"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="520000"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Ppc_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5200000"/>
            <Parameter name="UpperBound" type="cn" value="5.2e+07"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0048"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Ppc_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.048"/>
            <Parameter name="UpperBound" type="cn" value="0.48"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0408"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_Ppc_Kfbp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.408"/>
            <Parameter name="UpperBound" type="cn" value="4.08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.132"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PpsA_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.32"/>
            <Parameter name="UpperBound" type="cn" value="13.2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-80"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PpsA_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1e-79"/>
            <Parameter name="UpperBound" type="cn" value="1e-78"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000177"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PpsA_Kpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00177"/>
            <Parameter name="UpperBound" type="cn" value="0.0177"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0001"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PpsA_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="0.01"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="574.9"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PykF_kcat],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5749"/>
            <Parameter name="UpperBound" type="cn" value="57490"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="10000"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PykF_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="100000"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PykF_Kpep],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5"/>
            <Parameter name="UpperBound" type="cn" value="50"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0413"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[e_PykF_Kfbp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.413"/>
            <Parameter name="UpperBound" type="cn" value="4.13"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="11.6"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_k1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="116"/>
            <Parameter name="UpperBound" type="cn" value="1160"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="4.63"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_km1],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="46.3"/>
            <Parameter name="UpperBound" type="cn" value="463"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="252"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_k4],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2520"/>
            <Parameter name="UpperBound" type="cn" value="25200"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00085"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_KEIIA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.008500000000000001"/>
            <Parameter name="UpperBound" type="cn" value="0.085"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00012"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[pts_Kglc],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0012"/>
            <Parameter name="UpperBound" type="cn" value="0.012"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Cra_scale],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="100"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.136"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Cra_kfbp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.36"/>
            <Parameter name="UpperBound" type="cn" value="13.6"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Cra_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e+07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Crp_scale],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="100000000"/>
            <Parameter name="UpperBound" type="cn" value="1e+09"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0895"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Crp_kcamp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.895"/>
            <Parameter name="UpperBound" type="cn" value="8.95"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_Crp_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_PdhR_scale],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="100"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0164"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_PdhR_kpyr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.164"/>
            <Parameter name="UpperBound" type="cn" value="1.64"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[tf_PdhR_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.9e-10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.9e-09"/>
            <Parameter name="UpperBound" type="cn" value="1.9e-08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2e-06"/>
            <Parameter name="UpperBound" type="cn" value="2e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000365"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00365"/>
            <Parameter name="UpperBound" type="cn" value="0.0365"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.219"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_KDNA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.19"/>
            <Parameter name="UpperBound" type="cn" value="21.9"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0897"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_KP],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.897"/>
            <Parameter name="UpperBound" type="cn" value="8.97"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000301"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_KPprime],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00301"/>
            <Parameter name="UpperBound" type="cn" value="0.0301"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000488"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_KG],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00488"/>
            <Parameter name="UpperBound" type="cn" value="0.0488"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="92.3"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_L],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="923"/>
            <Parameter name="UpperBound" type="cn" value="9230"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="9.3e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_kcat_iclr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0009300000000000001"/>
            <Parameter name="UpperBound" type="cn" value="0.0093"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_DNA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2.3e-11"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.3e-10"/>
            <Parameter name="UpperBound" type="cn" value="2.3e-09"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2e-09"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2e-08"/>
            <Parameter name="UpperBound" type="cn" value="2e-07"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0341"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_aceBAK_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.341"/>
            <Parameter name="UpperBound" type="cn" value="3.41"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_acs_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.2e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_acs_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.2e-06"/>
            <Parameter name="UpperBound" type="cn" value="1.2e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_acs_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.31"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00047"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_acs_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0047"/>
            <Parameter name="UpperBound" type="cn" value="0.047"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_akg2mal_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.4e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_akg2mal_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.4e-06"/>
            <Parameter name="UpperBound" type="cn" value="1.4e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0091"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_akg2mal_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.091"/>
            <Parameter name="UpperBound" type="cn" value="0.91"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_akg2mal_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.74"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.2e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.2e-07"/>
            <Parameter name="UpperBound" type="cn" value="6.2e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.009"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.09"/>
            <Parameter name="UpperBound" type="cn" value="0.9"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="4.7e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.7e-07"/>
            <Parameter name="UpperBound" type="cn" value="4.7e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0012"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_emp_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.012"/>
            <Parameter name="UpperBound" type="cn" value="0.12"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.8e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_eno_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.799999999999999e-07"/>
            <Parameter name="UpperBound" type="cn" value="6.8e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_eno_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0016"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_eno_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.016"/>
            <Parameter name="UpperBound" type="cn" value="0.16"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_fdp_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="4.5e-09"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_fdp_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="4.5e-08"/>
            <Parameter name="UpperBound" type="cn" value="4.5e-07"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000118"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_fdp_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00118"/>
            <Parameter name="UpperBound" type="cn" value="0.0118"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_gltA_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2.3e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_gltA_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.3e-06"/>
            <Parameter name="UpperBound" type="cn" value="2.3e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.004"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_gltA_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.04"/>
            <Parameter name="UpperBound" type="cn" value="0.4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_gltA_n],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.07"/>
            <Parameter name="UpperBound" type="cn" value="4"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.1e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_icd_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.1e-07"/>
            <Parameter name="UpperBound" type="cn" value="1.1e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="8.5e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_icd_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="8.5e-07"/>
            <Parameter name="UpperBound" type="cn" value="8.5e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000117"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_icd_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00117"/>
            <Parameter name="UpperBound" type="cn" value="0.0117"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_mdh_vcrp_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="9.1e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_mdh_vcrp_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="9.099999999999999e-06"/>
            <Parameter name="UpperBound" type="cn" value="9.1e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.006"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_mdh_Kcrp],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.06"/>
            <Parameter name="UpperBound" type="cn" value="0.6"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pckA_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2.5e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pckA_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.5e-06"/>
            <Parameter name="UpperBound" type="cn" value="2.5e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.000535"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pckA_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00535"/>
            <Parameter name="UpperBound" type="cn" value="0.0535"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="3.6e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pdh_vpdhr_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.6e-07"/>
            <Parameter name="UpperBound" type="cn" value="3.6e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.3e-10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pdh_vpdhr_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.3e-09"/>
            <Parameter name="UpperBound" type="cn" value="1.3e-08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00034"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pdh_Kpdhr],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0034"/>
            <Parameter name="UpperBound" type="cn" value="0.034"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="8.2e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pfkA_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="8.2e-07"/>
            <Parameter name="UpperBound" type="cn" value="8.2e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.6e-10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pfkA_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.6e-09"/>
            <Parameter name="UpperBound" type="cn" value="6.6e-08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="6.3e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pfkA_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.3e-07"/>
            <Parameter name="UpperBound" type="cn" value="6.3e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_ppsA_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0"/>
            <Parameter name="UpperBound" type="cn" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="3.3e-07"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_ppsA_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.3e-06"/>
            <Parameter name="UpperBound" type="cn" value="3.3e-05"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0017"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_ppsA_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.017"/>
            <Parameter name="UpperBound" type="cn" value="0.17"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="3.9e-08"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pykF_vcra_unbound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.9e-07"/>
            <Parameter name="UpperBound" type="cn" value="3.9e-06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="2.1e-10"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pykF_vcra_bound],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.1e-09"/>
            <Parameter name="UpperBound" type="cn" value="2.1e-08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.00023"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[g_pykF_Kcra],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0023"/>
            <Parameter name="UpperBound" type="cn" value="0.023"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="5.6e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_muACT],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5.6e-05"/>
            <Parameter name="UpperBound" type="cn" value="0.00056"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1.8e-05"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_muGLC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.00018"/>
            <Parameter name="UpperBound" type="cn" value="0.0018"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.188"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_ACoA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.88"/>
            <Parameter name="UpperBound" type="cn" value="18.8"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0978"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_AKG],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.978"/>
            <Parameter name="UpperBound" type="cn" value="9.78"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0154"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_G6P],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.154"/>
            <Parameter name="UpperBound" type="cn" value="1.54"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.64"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_OAA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="6.4"/>
            <Parameter name="UpperBound" type="cn" value="64"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0423"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PEP],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.423"/>
            <Parameter name="UpperBound" type="cn" value="4.23"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0049"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PG3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.049"/>
            <Parameter name="UpperBound" type="cn" value="0.49"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0553"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_GLC_PYR],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.553"/>
            <Parameter name="UpperBound" type="cn" value="5.53"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0108"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_ACoA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.108"/>
            <Parameter name="UpperBound" type="cn" value="1.08"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0056"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_AKG],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.056"/>
            <Parameter name="UpperBound" type="cn" value="0.56"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0076"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_G6P],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.076"/>
            <Parameter name="UpperBound" type="cn" value="0.76"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.143"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_OAA],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.43"/>
            <Parameter name="UpperBound" type="cn" value="14.3"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0047"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PEP],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.047"/>
            <Parameter name="UpperBound" type="cn" value="0.47"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.0066"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PG3],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.066"/>
            <Parameter name="UpperBound" type="cn" value="0.66"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0.5185"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Values[bm_ACT_PYR],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="5.185"/>
            <Parameter name="UpperBound" type="cn" value="51.85"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="xnom.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="161"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="48"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[BM],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[ICT],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[MAL],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[OAA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="13">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PEP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="14">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PG3],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="15">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PYR],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="16">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[AceA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="17">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[AceB],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="18">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[AceK],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="19">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Acoa2act],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[ACT],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="20">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Acs],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="21">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Akg2mal],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="22">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[CAMPdegr],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="23">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Cya],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="24">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Emp],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="25">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Eno],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="26">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Fdp],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="27">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[GltA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="28">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Icd],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="29">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Icd_P],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Environment],Vector=Metabolites[GLC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="30">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Mdh],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="31">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Me],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="32">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PckA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="33">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Pdh],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="34">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PfkA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="35">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Ppc],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="36">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PpsA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="37">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PykF],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="38">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Cra],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="39">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[CraFBP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[ACoA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="40">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[Crp],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="41">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[CrpcAMP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="42">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[IclR],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="43">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PdhR],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="44">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[PdhRPYR],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="45">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[EIIA],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="46">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[EIIA_P],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="47">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[EIICB],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[AKG],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[cAMP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[FBP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[G6P],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Kotte2010_Ecoli_Metabolic_Adaption,Vector=Compartments[Cell],Vector=Metabolites[GLX],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="4294967295"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="0"/>
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
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  <SBMLReference file="b3.xml">
    <SBMLMap SBMLid="ACT" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ACT_1" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="ACT_2" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="ACoA" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="AKG" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="AceA" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="AceB" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="AceK" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Acoa2act" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Acs" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Akg2mal" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="BM" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="BM_1" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="BM_2" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="CAMPdegr" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Cra" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="CraFBP" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Crp" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="CrpcAMP" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Cya" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="EIIA" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="EIIA_P" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="EIICB" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="Emp" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Eno" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Environment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="FBP" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Fdp" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="GLC" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="GLC_1" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="GLC_2" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="GLX" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="GltA" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="ICT" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Icd" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Icd_P" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="IclR" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="MAL" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Mdh" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Me" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="OAA" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="PEP" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="PG3" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="PYR" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PckA" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Pdh" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="PdhR" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="PdhRPYR" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="PfkA" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Ppc" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="PpsA" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="PykF" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="SS_Me" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="SS_Ppc" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="alphaACT" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="alphaGLC" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="bm_ACT_ACoA" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="bm_ACT_AKG" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="bm_ACT_G6P" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="bm_ACT_OAA" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="bm_ACT_PEP" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="bm_ACT_PG3" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="bm_ACT_PYR" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="bm_ACoA" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="bm_AKG" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="bm_G6P" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="bm_GLC_ACoA" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="bm_GLC_AKG" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="bm_GLC_G6P" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="bm_GLC_OAA" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="bm_GLC_PEP" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="bm_GLC_PG3" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="bm_GLC_PYR" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="bm_OAA" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="bm_PEP" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="bm_PG3" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="bm_PYR" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="bm_k_expr" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="bm_muACT" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="bm_muGLC" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="cAMP" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="d_ACoA" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="d_AKG" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="d_AceA" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="d_AceB" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="d_AceK" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="d_Acoa2act" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="d_Acs" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="d_Akg2mal" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="d_CAMPdegr" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="d_Cra" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="d_CraFBP" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="d_Crp" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="d_CrpcAMP" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="d_Cya" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="d_EIIA" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="d_EIIA_P" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="d_EIICB" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="d_Emp" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="d_Eno" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="d_FBP" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="d_Fdp" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="d_G6P" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="d_GLX" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="d_GltA" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="d_ICT" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="d_Icd" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="d_Icd_P" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="d_IclR" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="d_MAL" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="d_Mdh" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="d_Me" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="d_OAA" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="d_PEP" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="d_PG3" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="d_PYR" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="d_PckA" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="d_Pdh" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="d_PdhR" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="d_PdhRPYR" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="d_PfkA" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="d_Ppc" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="d_PpsA" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="d_PykF" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="d_cAMP" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="d_k_degr" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="e_AceA" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="e_AceA_Kakg" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="e_AceA_Kict" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="e_AceA_Kpep" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="e_AceA_Kpg3" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="e_AceA_L" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="e_AceA_kcat" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="e_AceA_n" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="e_AceB" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="e_AceB_Kacoa" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="e_AceB_Kglx" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="e_AceB_Kglxacoa" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="e_AceB_kcat" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="e_AceK_Kakg" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="e_AceK_Kglx" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="e_AceK_Ki" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="e_AceK_Kicd" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="e_AceK_Kicd_P" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="e_AceK_Kict" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="e_AceK_Koaa" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="e_AceK_Kpep" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="e_AceK_Kpg3" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="e_AceK_Kpyr" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="e_AceK_L" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="e_AceK_Ph" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="e_AceK_kcat_ki" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="e_AceK_kcat_ph" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="e_AceK_n" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="e_Acoa2act" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="e_Acoa2act_Kacoa" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="e_Acoa2act_Kpyr" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="e_Acoa2act_L" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="e_Acoa2act_kcat" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="e_Acoa2act_n" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="e_Acs" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="e_Acs_Kact" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="e_Acs_kcat" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="e_Akg2mal" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="e_Akg2mal_Kakg" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="e_Akg2mal_kcat" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="e_CAMPdegr" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="e_CAMPdegr_KcAMP" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="e_CAMPdegr_kcat" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="e_Cya" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="e_Cya_KEIIA" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="e_Cya_kcat" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="e_Emp" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="e_Emp_Kfbp" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="e_Emp_Kpg3" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="e_Emp_kcat_f" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="e_Emp_kcat_r" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="e_Eno" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="e_Eno_Kpep" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="e_Eno_Kpg3" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="e_Eno_kcatf" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="e_Eno_kcatr" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="e_Fdp" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="e_Fdp_Kfbp" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="e_Fdp_Kpep" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="e_Fdp_L" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="e_Fdp_kcat" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="e_Fdp_n" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="e_GltA" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="e_GltA_Kacoa" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="e_GltA_Kakg" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="e_GltA_Koaa" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="e_GltA_Koaaacoa" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="e_GltA_kcat" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="e_Icd" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="e_Icd_Kict" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="e_Icd_Kpep" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="e_Icd_L" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="e_Icd_kcat" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="e_Icd_n" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="e_Mdh" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="e_Mdh_Kmal" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="e_Mdh_kcat" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="e_Mdh_n" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="e_Me" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="e_Me_Kacoa" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="e_Me_Kcamp" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="e_Me_Kmal" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="e_Me_L" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="e_Me_kcat" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="e_Me_n" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="e_PckA" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="e_PckA_Koaa" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="e_PckA_Kpep" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="e_PckA_kcat" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="e_Pdh" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="e_Pdh_Kglx" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="e_Pdh_Kpyr" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="e_Pdh_KpyrI" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="e_Pdh_L" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="e_Pdh_kcat" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="e_Pdh_n" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="e_PfkA" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="e_PfkA_Kg6p" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="e_PfkA_Kpep" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="e_PfkA_L" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="e_PfkA_kcat" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="e_PfkA_n" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="e_Ppc" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="e_Ppc_Kfbp" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="e_Ppc_Kpep" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="e_Ppc_L" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="e_Ppc_kcat" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="e_Ppc_n" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="e_PpsA" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="e_PpsA_Kpep" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="e_PpsA_Kpyr" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="e_PpsA_L" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="e_PpsA_kcat" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="e_PpsA_n" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="e_PykF" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="e_PykF_Kfbp" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="e_PykF_Kpep" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="e_PykF_L" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="e_PykF_kcat" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="e_PykF_n" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="env_ACTex" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="env_ACTup" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="env_GLCup" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="env_M_ACT" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="env_M_GLC" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="env_growth" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="env_uc" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="g_EIIA" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="g_EIICB" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="g_aceA" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="g_aceB" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="g_aceBAK_DNA" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="g_aceBAK_KDNA" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="g_aceBAK_KG" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="g_aceBAK_KP" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="g_aceBAK_KPprime" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="g_aceBAK_Kcra" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="g_aceBAK_Kcrp" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="g_aceBAK_L" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="g_aceBAK_aceBfactor" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="g_aceBAK_aceKfactor" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="g_aceBAK_kcat_iclr" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="g_aceBAK_vcra_bound" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="g_aceBAK_vcra_unbound" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="g_aceBAK_vcrp_bound" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="g_aceBAK_vcrp_unbound" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="g_aceK" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="g_acoa2act" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="g_acs" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="g_acs_Kcrp" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="g_acs_n" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="g_acs_vcrp_bound" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="g_acs_vcrp_unbound" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="g_akg2mal" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="g_akg2mal_Kcrp" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="g_akg2mal_n" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="g_akg2mal_vcrp_bound" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="g_akg2mal_vcrp_unbound" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="g_cAMPdegr" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="g_cra" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="g_crp" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="g_cya" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="g_emp" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="g_emp_Kcra" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="g_emp_Kcrp" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="g_emp_vcra_bound" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="g_emp_vcra_unbound" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="g_emp_vcrp_bound" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="g_emp_vcrp_unbound" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="g_eno" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="g_eno_Kcra" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="g_eno_vcra_bound" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="g_eno_vcra_unbound" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="g_fdp" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="g_fdp_Kcra" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="g_fdp_vcra_bound" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="g_fdp_vcra_unbound" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="g_gltA" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="g_gltA_Kcrp" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="g_gltA_n" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="g_gltA_vcrp_bound" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="g_gltA_vcrp_unbound" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="g_icd" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="g_icd_Kcra" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="g_icd_vcra_bound" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="g_icd_vcra_unbound" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="g_iclr" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="g_mdh" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="g_mdh_Kcrp" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="g_mdh_vcrp_bound" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="g_mdh_vcrp_unbound" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="g_me" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="g_pckA" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="g_pckA_Kcra" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="g_pckA_vcra_bound" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="g_pckA_vcra_unbound" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="g_pdh" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="g_pdh_Kpdhr" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="g_pdh_vpdhr_bound" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="g_pdh_vpdhr_unbound" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="g_pdhr" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="g_pfkA" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="g_pfkA_Kcra" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="g_pfkA_vcra_bound" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="g_pfkA_vcra_unbound" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="g_ppc" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="g_ppsA" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="g_ppsA_Kcra" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="g_ppsA_vcra_bound" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="g_ppsA_vcra_unbound" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="g_pykF" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="g_pykF_Kcra" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="g_pykF_vcra_bound" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="g_pykF_vcra_unbound" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="k_bm_ACoA" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="k_bm_AKG" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="k_bm_G6P" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="k_bm_OAA" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="k_bm_PEP" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="k_bm_PG3" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="k_bm_PYR" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="pts_KEIIA" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="pts_Kglc" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="pts_k1" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="pts_k4" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="pts_km1" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="pts_r1" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="pts_r4" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="shift1" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="shift2" COPASIkey="ModelValue_206"/>
    <SBMLMap SBMLid="tf_Cra" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="tf_Cra_kfbp" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="tf_Cra_n" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="tf_Cra_scale" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="tf_Crp" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="tf_Crp_kcamp" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="tf_Crp_n" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="tf_Crp_scale" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="tf_PdhR" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="tf_PdhR_kpyr" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="tf_PdhR_n" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="tf_PdhR_scale" COPASIkey="ModelValue_112"/>
  </SBMLReference>
</COPASI>
