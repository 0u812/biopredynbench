function [dxdt, x, p] = b3(t, x, p)    

    
%% p has 178 parameters, but originally it had 193. Re-define indices:
%  pfix                  = p;
%  p_complete            = zeros(1,193);
%
%  p_complete(1:4)       = pfix(1:4);
%  p_complete(6:16)      = pfix(5:15);
%  p_complete(18:28)     = pfix(16:26);
%  p_complete(30:49)     = pfix(27:46);
%  p_complete(51:59)     = pfix(47:55);
%  p_complete(61:67)     = pfix(56:62);
%  p_complete(69:76)     = pfix(63:70);
%  p_complete(78:82)     = pfix(71:75);
%  p_complete(84:87)     = pfix(76:79);
%  p_complete(89:92)     = pfix(80:83);
%  p_complete(94:97)     = pfix(84:87);
%  p_complete(99:118)    = pfix(88:107);
%  p_complete(121:175)   = pfix(108:162);
%  p_complete(178:193)   = pfix(163:178);
%
%  p_complete(5)         = 4;
%  p_complete(17)        = 2;
%  p_complete(29)        = 2;
%  p_complete(50)        = 4;
%  p_complete(60)        = 2;
%  p_complete(68)        = 1.33;
%  p_complete(77)        = 2.65;
%  p_complete(83)        = 4;
%  p_complete(88)        = 3;
%  p_complete(93)        = 2;
%  p_complete(98)        = 4;
%  p_complete(119)       = 0.3;
%  p_complete(120)       = 0.03;
%  p_complete(176)       = 2.8e-5;
%  p_complete(177)       = 2e4;

%  p = p_complete;

%fprintf('size of pfix')
%  a__p__g__acs__n = 133
%  fprintf('starting value for a__p__g__acs__n: %f (%d index)\n', p(a__p__g__acs__n), a__p__g__acs__n);
%  fprintf('  pfix at a__p__g__acs__n: %f (%d index)\n', pfix(a__p__g__acs__n), a__p__g__acs__n);
   
   
%% Definition of Aliases
% The purpose of the aliases is to make the MATLAB code readable,
% and to make the simulation output accessible.
% All aliases are stored in the structure 'a':
% 'a.x.NAME' denote state variables
% 'a.f.(...)' denote rates
%   'a.f.e.NAME'   -> enzymatic reaction rates
%   'a.f.pts.NAME' -> rates in the PTS system
%   'a.f.tf.NAME'  -> metabolite-transcription factor binding rates
%   'a.f.g.NAME'   -> gene expression rates
%   'a.f.d.NAME'   -> dilution and degradation rates
%   'a.f.bm.NAME'  -> biomass-producing reaction rates
%   'a.f.env.NAME' -> interaction rates with the cell's environment
% 'a.p.(...)' denote parameters
%   'a.p.e.NAME    -> enzyme kinetics
%   'a.p.pts.NAME  -> PTS system
%   'a.p.tf.NAME   -> metabolite-transcription factor interactions
%   'a.p.g.NAME    -> gene expression
%   'a.p.d.NAME    -> protein degradation
%   'a.p.bm.NAME   -> growth and biomass production
%   'a.p.env.NAME  -> interaction with the environment

% Definition of state aliases

a__x__OD = 1;
a__x__ACT = 2;
a__x__GLC = 3;
a__x__ACoA = 4;
a__x__AKG = 5;
a__x__cAMP = 6;
a__x__FBP = 7;
a__x__G6P = 8;
a__x__GLX = 9;
a__x__ICT = 10;
a__x__MAL = 11;
a__x__OAA = 12;
a__x__PEP = 13;
a__x__PG3 = 14;
a__x__PYR = 15;
a__x__AceA = 16;
a__x__AceB = 17;
a__x__AceK = 18;
a__x__Acoa2act = 19;
a__x__Acs = 20;
a__x__Akg2mal = 21;
a__x__CAMPdegr = 22;
a__x__Cya = 23;
a__x__Emp = 24;
a__x__Eno = 25;
a__x__Fdp = 26;
a__x__GltA = 27;
a__x__Icd = 28;
a__x__Icd_P = 29;
a__x__Mdh = 30;
a__x__MaeAB = 31;
a__x__PckA = 32;
a__x__Pdh = 33;
a__x__PfkA = 34;
a__x__Ppc = 35;
a__x__PpsA = 36;
a__x__PykF = 37;
a__x__EIIA = 38;
a__x__EIIA_P = 39;
a__x__EIICB = 40;
a__x__Cra = 41;
a__x__CraFBP = 42;
a__x__Crp = 43;
a__x__CrpcAMP = 44;
a__x__IclR = 45;
a__x__PdhR = 46;
a__x__PdhRPYR = 47;

% Definition of rate aliases

a__f__env__growth = 1;
a__f__env__GLCup = 2;
a__f__env__ACTup = 3;
a__f__env__ACTex = 4;
a__f__e__AceA = 5;
a__f__e__AceB = 6;
a__f__e__AceK_Ki = 7;
a__f__e__AceK_Ph = 8;
a__f__e__Acoa2act = 9;
a__f__e__Acs = 10;
a__f__e__Akg2mal = 11;
a__f__e__CAMPdegr = 12;
a__f__e__Cya = 13;
a__f__e__Emp = 14;
a__f__e__Eno = 15;
a__f__e__Fdp = 16;
a__f__e__GltA = 17;
a__f__e__Icd = 18;
a__f__e__MaeAB = 19;
a__f__e__Mdh = 20;
a__f__e__PckA = 21;
a__f__e__Pdh = 22;
a__f__e__PfkA = 23;
a__f__e__Ppc = 24;
a__f__e__PpsA = 25;
a__f__e__PykF = 26;
a__f__pts__r1 = 27;
a__f__pts__r4 = 28;
a__f__tf__Cra = 29;
a__f__tf__Crp = 30;
a__f__tf__PdhR = 31;
a__f__g__aceA = 32;
a__f__g__aceB = 33;
a__f__g__aceK = 34;
a__f__g__acoa2act = 35;
a__f__g__acs = 36;
a__f__g__akg2mal = 37;
a__f__g__campdegr = 38;
a__f__g__cra = 39;
a__f__g__crp = 40;
a__f__g__cya = 41;
a__f__g__EIIA = 42;
a__f__g__EIICB = 43;
a__f__g__emp = 44;
a__f__g__eno = 45;

a__f__g__fdp = 46;
a__f__g__gltA = 47;
a__f__g__icd = 48;
a__f__g__iclr = 49;
a__f__g__mdh = 50;
a__f__g__maeAB = 51;
a__f__g__pckA = 52;
a__f__g__pdh = 53;
a__f__g__pdhr = 54;
a__f__g__pfkA = 55;
a__f__g__ppc = 56;
a__f__g__ppsA = 57;
a__f__g__pykF = 58;
a__f__d__ACoA = 59;
a__f__d__AKG = 60;
a__f__d__cAMP = 61;
a__f__d__FBP = 62;
a__f__d__G6P = 63;
a__f__d__GLX = 64;
a__f__d__ICT = 65;
a__f__d__MAL = 66;
a__f__d__OAA = 67;
a__f__d__PEP = 68;
a__f__d__PG3 = 69;
a__f__d__PYR = 70;
a__f__d__AceA = 71;
a__f__d__AceB = 72;
a__f__d__AceK = 73;
a__f__d__Acoa2act = 74;
a__f__d__Acs = 75;
a__f__d__Akg2mal = 76;
a__f__d__CAMPdegr = 77;
a__f__d__Cra = 78;
a__f__d__CraFBP = 79;
a__f__d__Crp = 80;
a__f__d__CrpcAMP = 81;
a__f__d__Cya = 82;
a__f__d__EIIA = 83;
a__f__d__EIIA_P = 84;
a__f__d__EIICB = 85;
a__f__d__Emp = 86;
a__f__d__Eno = 87;
a__f__d__Fdp = 88;
a__f__d__GltA = 89;
a__f__d__Icd = 90;
a__f__d__Icd_P = 91;
a__f__d__IclR = 92;
a__f__d__Mdh = 93;
a__f__d__MaeAB = 94;
a__f__d__PckA = 95;
a__f__d__Pdh = 96;
a__f__d__PdhR = 97;
a__f__d__PdhRPYR = 98;
a__f__d__PfkA = 99;
a__f__d__Ppc = 100;
a__f__d__PpsA = 101;
a__f__d__PykF = 102;
a__f__bm__ACoA = 103;
a__f__bm__AKG = 104;
a__f__bm__G6P = 105;
a__f__bm__OAA = 106;
a__f__bm__PEP = 107;
a__f__bm__PG3 = 108;
a__f__bm__PYR = 109;

% Definition of parameter aliases

a__p__env__M_ACT = 1;
a__p__env__M_GLC = 2;
a__p__env__uc = 3;
a__p__e__AceA__kcat = 4;
a__p__e__AceA__n = 5;
a__p__e__AceA__L = 6;
a__p__e__AceA__Kict = 7;
a__p__e__AceA__Kpep = 8;
a__p__e__AceA__Kpg3 = 9;
a__p__e__AceA__Kakg = 10;
a__p__e__AceB__kcat = 11;
a__p__e__AceB__Kglx = 12;
a__p__e__AceB__Kacoa = 13;
a__p__e__AceB__Kglxacoa = 14;
a__p__e__AceK__kcat_ki = 15;
a__p__e__AceK__kcat_ph = 16;
a__p__e__AceK__n = 17;
a__p__e__AceK__L = 18;
a__p__e__AceK__Kicd = 19;
a__p__e__AceK__Kicd_P = 20;
a__p__e__AceK__Kpep = 21;
a__p__e__AceK__Kpyr = 22;
a__p__e__AceK__Koaa = 23;
a__p__e__AceK__Kglx = 24;
a__p__e__AceK__Kakg = 25;
a__p__e__AceK__Kpg3 = 26;
a__p__e__AceK__Kict = 27;
a__p__e__Acoa2act__kcat = 28;
a__p__e__Acoa2act__n = 29;
a__p__e__Acoa2act__L = 30;
a__p__e__Acoa2act__Kacoa = 31;
a__p__e__Acoa2act__Kpyr = 32;
a__p__e__Acs__kcat = 33;
a__p__e__Acs__Kact = 34;
a__p__e__Akg2mal__kcat = 35;
a__p__e__Akg2mal__Kakg = 36;
a__p__e__CAMPdegr__kcat = 37;
a__p__e__CAMPdegr__KcAMP = 38;
a__p__e__Cya__kcat = 39;
a__p__e__Cya__KEIIA = 40;
a__p__e__Emp__kcat__f = 41;
a__p__e__Emp__kcat__r = 42;
a__p__e__Emp__Kfbp = 43;
a__p__e__Emp__Kpg3 = 44;
a__p__e__Eno__kcatf = 45;
a__p__e__Eno__kcatr = 46;
a__p__e__Eno__Kpg3 = 47;
a__p__e__Eno__Kpep = 48;
a__p__e__Fdp__kcat = 49;
a__p__e__Fdp__n = 50;
a__p__e__Fdp__L = 51;
a__p__e__Fdp__Kfbp = 52;
a__p__e__Fdp__Kpep = 53;
a__p__e__GltA__kcat = 54;
a__p__e__GltA__Koaa = 55;
a__p__e__GltA__Kacoa = 56;
a__p__e__GltA__Koaaacoa = 57;
a__p__e__GltA__Kakg = 58;
a__p__e__Icd__kcat = 59;
a__p__e__Icd__n = 60;
a__p__e__Icd__L = 61;
a__p__e__Icd__Kict = 62;
a__p__e__Icd__Kpep = 63;
a__p__e__Mdh__kcat = 64;
a__p__e__Mdh__n = 65;
a__p__e__Mdh__Kmal = 66;
a__p__e__MaeAB__kcat = 67;
a__p__e__MaeAB__n = 68;
a__p__e__MaeAB__L = 69;
a__p__e__MaeAB__Kmal = 70;
a__p__e__MaeAB__Kacoa = 71;
a__p__e__MaeAB__Kcamp = 72;
a__p__e__PckA__kcat = 73;
a__p__e__PckA__Koaa = 74;
a__p__e__PckA__Kpep = 75;
a__p__e__Pdh__kcat = 76;
a__p__e__Pdh__n = 77;
a__p__e__Pdh__L = 78;
a__p__e__Pdh__Kpyr = 79;
a__p__e__Pdh__KpyrI = 80;
a__p__e__Pdh__Kglx = 81;
a__p__e__PfkA__kcat = 82;
a__p__e__PfkA__n = 83;
a__p__e__PfkA__L = 84;
a__p__e__PfkA__Kg6p = 85;
a__p__e__PfkA__Kpep = 86;
a__p__e__Ppc__kcat = 87;
a__p__e__Ppc__n = 88;
a__p__e__Ppc__L = 89;
a__p__e__Ppc__Kpep = 90;
a__p__e__Ppc__Kfbp = 91;
a__p__e__PpsA__kcat = 92;
a__p__e__PpsA__n = 93;
a__p__e__PpsA__L = 94;
a__p__e__PpsA__Kpyr = 95;
a__p__e__PpsA__Kpep = 96;
a__p__e__PykF__kcat = 97;
a__p__e__PykF__n = 98;
a__p__e__PykF__L = 99;
a__p__e__PykF__Kpep = 100;
a__p__e__PykF__Kfbp = 101;
a__p__pts__k1 = 102;
a__p__pts__km1 = 103;
a__p__pts__k4 = 104;
a__p__pts__KEIIA = 105;
a__p__pts__Kglc = 106;
a__p__tf__Cra__scale = 107;
a__p__tf__Cra__kfbp = 108;
a__p__tf__Cra__n = 109;
a__p__tf__Crp__scale = 110;
a__p__tf__Crp__kcamp = 111;
a__p__tf__Crp__n = 112;
a__p__tf__PdhR__scale = 113;
a__p__tf__PdhR__kpyr = 114;
a__p__tf__PdhR__n = 115;
a__p__g__aceBAK__vcra_unbound = 116;
a__p__g__aceBAK__vcra_bound = 117;
a__p__g__aceBAK__Kcra = 118;
a__p__g__aceBAK__aceBfactor = 119;
a__p__g__aceBAK__aceKfactor = 120;
a__p__g__aceBAK__KDNA = 121;
a__p__g__aceBAK__KP = 122;
a__p__g__aceBAK__KPprime = 123;
a__p__g__aceBAK__KG = 124;
a__p__g__aceBAK__L = 125;
a__p__g__aceBAK__kcat_iclr = 126;
a__p__g__aceBAK__DNA = 127;
a__p__g__aceBAK__vcrp_bound = 128;
a__p__g__aceBAK__vcrp_unbound = 129;
a__p__g__aceBAK__Kcrp = 130;
a__p__g__acs__vcrp_unbound = 131;
a__p__g__acs__vcrp_bound = 132;
a__p__g__acs__n = 133;
a__p__g__acs__Kcrp = 134;
a__p__g__akg2mal__vcrp_unbound = 135;
a__p__g__akg2mal__vcrp_bound = 136;
a__p__g__akg2mal__Kcrp = 137;
a__p__g__akg2mal__n = 138;
a__p__g__emp__vcra_unbound = 139;
a__p__g__emp__vcra_bound = 140;
a__p__g__emp__Kcra = 141;
a__p__g__emp__vcrp_unbound = 142;
a__p__g__emp__vcrp_bound = 143;
a__p__g__emp__Kcrp = 144;
a__p__g__eno__vcra_unbound = 145;
a__p__g__eno__vcra_bound = 146;
a__p__g__eno__Kcra = 147;
a__p__g__fdp__vcra_unbound = 148;
a__p__g__fdp__vcra_bound = 149;
a__p__g__fdp__Kcra = 150;
a__p__g__gltA__vcrp_unbound = 151;
a__p__g__gltA__vcrp_bound = 152;
a__p__g__gltA__Kcrp = 153;
a__p__g__gltA__n = 154;
a__p__g__icd__vcra_unbound = 155;
a__p__g__icd__vcra_bound = 156;
a__p__g__icd__Kcra = 157;
a__p__g__mdh__vcrp_unbound = 158;
a__p__g__mdh__vcrp_bound = 159;
a__p__g__mdh__Kcrp = 160;
a__p__g__pckA__vcra_unbound = 161;
a__p__g__pckA__vcra_bound = 162;
a__p__g__pckA__Kcra = 163;
a__p__g__pdh__vpdhr_unbound = 164;
a__p__g__pdh__vpdhr_bound = 165;
a__p__g__pdh__Kpdhr = 166;
a__p__g__pfkA__vcra_unbound = 167;
a__p__g__pfkA__vcra_bound = 168;
a__p__g__pfkA__Kcra = 169;
a__p__g__ppsA__vcra_unbound = 170;
a__p__g__ppsA__vcra_bound = 171;
a__p__g__ppsA__Kcra = 172;
a__p__g__pykF__vcra_unbound = 173;
a__p__g__pykF__vcra_bound = 174;
a__p__g__pykF__Kcra = 175;
a__p__d__k_degr = 176;
a__p__bm__k_expr = 177;
a__p__bm__muACT = 178;
a__p__bm__muGLC = 179;
a__p__bm__GLC__ACoA = 180;
a__p__bm__GLC__AKG = 181;
a__p__bm__GLC__G6P = 182;
a__p__bm__GLC__OAA = 183;
a__p__bm__GLC__PEP = 184;
a__p__bm__GLC__PG3 = 185;
a__p__bm__GLC__PYR = 186;
a__p__bm__ACT__ACoA = 187;
a__p__bm__ACT__AKG = 188;
a__p__bm__ACT__G6P = 189;
a__p__bm__ACT__OAA = 190;
a__p__bm__ACT__PEP = 191;
a__p__bm__ACT__PG3 = 192;
a__p__bm__ACT__PYR = 193;

%% Definition of the stoichiometric matrix 'S'

nr_of_states = 47;
nr_of_rates = 109;

S = sparse(nr_of_states,nr_of_rates);

S(a__x__OD,a__f__env__growth) = 1;
S(a__x__GLC,a__f__env__GLCup) = -1;
S(a__x__ACT,a__f__env__ACTup) = -1;
S(a__x__ACT,a__f__env__ACTex) = 1;
S(a__x__AceA,a__f__g__aceA) = 1;
S(a__x__AceA,a__f__d__AceA) = -1;
S(a__x__AceB,a__f__g__aceB) = 1;
S(a__x__AceB,a__f__d__AceB) = -1;
S(a__x__AceK,a__f__g__aceK) = 1;
S(a__x__AceK,a__f__d__AceK) = -1;
S(a__x__Acoa2act,a__f__g__acoa2act) = 1;
S(a__x__Acoa2act,a__f__d__Acoa2act) = -1;
S(a__x__Acs,a__f__g__acs) = 1;
S(a__x__Acs,a__f__d__Acs) = -1;
S(a__x__Akg2mal,a__f__g__akg2mal) = 1;
S(a__x__Akg2mal,a__f__d__Akg2mal) = -1;
S(a__x__CAMPdegr,a__f__g__campdegr) = 1;
S(a__x__CAMPdegr,a__f__d__CAMPdegr) = -1;
S(a__x__Cra,a__f__g__cra) = 1;
S(a__x__Cra,a__f__d__Cra) = -1;
S(a__x__CraFBP,a__f__d__CraFBP) = -1;
S(a__x__Crp,a__f__g__crp) = 1;
S(a__x__Crp,a__f__d__Crp) = -1;
S(a__x__CrpcAMP,a__f__d__CrpcAMP) = -1;
S(a__x__Cya,a__f__g__cya) = 1;
S(a__x__Cya,a__f__d__Cya) = -1;
S(a__x__Emp,a__f__g__emp) = 1;
S(a__x__Emp,a__f__d__Emp) = -1;
S(a__x__Eno,a__f__g__eno) = 1;
S(a__x__Eno,a__f__d__Eno) = -1;
S(a__x__Fdp,a__f__g__fdp) = 1;
S(a__x__Fdp,a__f__d__Fdp) = -1;
S(a__x__GltA,a__f__g__gltA) = 1;
S(a__x__GltA,a__f__d__GltA) = -1;
S(a__x__Icd,a__f__g__icd) = 1;
S(a__x__Icd,a__f__d__Icd) = -1;
S(a__x__Icd_P,a__f__d__Icd_P) = -1;
S(a__x__IclR,a__f__g__iclr) = 1;
S(a__x__IclR,a__f__d__IclR) = -1;
S(a__x__Mdh,a__f__g__mdh) = 1;
S(a__x__Mdh,a__f__d__Mdh) = -1;
S(a__x__MaeAB,a__f__g__maeAB) = 1;
S(a__x__MaeAB,a__f__d__MaeAB) = -1;
S(a__x__PckA,a__f__g__pckA) = 1;
S(a__x__PckA,a__f__d__PckA) = -1;
S(a__x__Pdh,a__f__g__pdh) = 1;
S(a__x__Pdh,a__f__d__Pdh) = -1;
S(a__x__PdhR,a__f__g__pdhr) = 1;
S(a__x__PdhR,a__f__d__PdhR) = -1;
S(a__x__PdhRPYR,a__f__d__PdhRPYR) = -1;
S(a__x__PfkA,a__f__g__pfkA) = 1;
S(a__x__PfkA,a__f__d__PfkA) = -1;
S(a__x__Ppc,a__f__g__ppc) = 1;
S(a__x__Ppc,a__f__d__Ppc) = -1;
S(a__x__PpsA,a__f__g__ppsA) = 1;
S(a__x__PpsA,a__f__d__PpsA) = -1;
S(a__x__PykF,a__f__g__pykF) = 1;
S(a__x__PykF,a__f__d__PykF) = -1;
S(a__x__Icd,a__f__e__AceK_Ki) = -1;
S(a__x__Icd,a__f__e__AceK_Ph) = 1;
S(a__x__Icd_P,a__f__e__AceK_Ki) = 1;
S(a__x__Icd_P,a__f__e__AceK_Ph) = -1;
S(a__x__EIIA,a__f__pts__r1) = -1;
S(a__x__EIIA,a__f__pts__r4) = 1;
S(a__x__EIIA,a__f__g__EIIA) = 1;
S(a__x__EIIA,a__f__d__EIIA) = -1;
S(a__x__EIIA_P,a__f__pts__r1) = 1;
S(a__x__EIIA_P,a__f__pts__r4) = -1;
S(a__x__EIIA_P,a__f__d__EIIA_P) = -1;
S(a__x__EIICB,a__f__g__EIICB) = 1;
S(a__x__EIICB,a__f__d__EIICB) = -1;
S(a__x__CraFBP,a__f__tf__Cra) = 1;
S(a__x__Cra,a__f__tf__Cra) = -1;
S(a__x__CrpcAMP,a__f__tf__Crp) = 1;
S(a__x__Crp,a__f__tf__Crp) = -1;
S(a__x__PdhRPYR,a__f__tf__PdhR) = 1;
S(a__x__PdhR,a__f__tf__PdhR) = -1;
S(a__x__ACoA,a__f__e__Acs) = 1;
S(a__x__ACoA,a__f__e__Pdh) = 1;
S(a__x__ACoA,a__f__e__Acoa2act) = -1;
S(a__x__ACoA,a__f__e__GltA) = -1;
S(a__x__ACoA,a__f__e__AceB) = -1;
S(a__x__ACoA,a__f__d__ACoA) = -1;
S(a__x__ACoA,a__f__bm__ACoA) = -1;
S(a__x__AKG,a__f__e__Icd) = 1;
S(a__x__AKG,a__f__e__AceA) = 1;
S(a__x__AKG,a__f__e__Akg2mal) = -1;
S(a__x__AKG,a__f__d__AKG) = -1;
S(a__x__AKG,a__f__bm__AKG) = -1;
S(a__x__cAMP,a__f__e__Cya) = 1;
S(a__x__cAMP,a__f__e__CAMPdegr) = -1;
S(a__x__cAMP,a__f__d__cAMP) = -1;
S(a__x__FBP,a__f__e__PfkA) = 1;
S(a__x__FBP,a__f__e__Emp) = -0.5;
S(a__x__FBP,a__f__e__Fdp) = -1;
S(a__x__FBP,a__f__d__FBP) = -1;
S(a__x__G6P,a__f__pts__r4) = 1;
S(a__x__G6P,a__f__e__Fdp) = 1;
S(a__x__G6P,a__f__e__PfkA) = -1;
S(a__x__G6P,a__f__d__G6P) = -1;
S(a__x__G6P,a__f__bm__G6P) = -1;
S(a__x__GLX,a__f__e__AceA) = 1;
S(a__x__GLX,a__f__e__AceB) = -1;
S(a__x__GLX,a__f__d__GLX) = -1;
S(a__x__ICT,a__f__e__GltA) = 1;
S(a__x__ICT,a__f__e__AceA) = -1;
S(a__x__ICT,a__f__e__Icd) = -1;
S(a__x__ICT,a__f__d__ICT) = -1;
S(a__x__MAL,a__f__e__AceB) = 1;
S(a__x__MAL,a__f__e__Akg2mal) = 1;
S(a__x__MAL,a__f__e__MaeAB) = -1;
S(a__x__MAL,a__f__e__Mdh) = -1;
S(a__x__MAL,a__f__d__MAL) = -1;
S(a__x__OAA,a__f__e__PckA) = -1;
S(a__x__OAA,a__f__e__GltA) = -1;
S(a__x__OAA,a__f__e__Ppc) = 1;
S(a__x__OAA,a__f__e__Mdh) = 1;
S(a__x__OAA,a__f__d__OAA) = -1;
S(a__x__OAA,a__f__bm__OAA) = -1;
S(a__x__PEP,a__f__e__PckA) = 1;
S(a__x__PEP,a__f__e__PpsA) = 1;
S(a__x__PEP,a__f__e__PykF) = -1;
S(a__x__PEP,a__f__e__Ppc) = -1;
S(a__x__PEP,a__f__e__Eno) = 1;
S(a__x__PEP,a__f__pts__r1) = -1;
S(a__x__PEP,a__f__d__PEP) = -1;
S(a__x__PEP,a__f__bm__PEP) = -1;
S(a__x__PG3,a__f__e__Emp) = 1;
S(a__x__PG3,a__f__e__Eno) = -1;
S(a__x__PG3,a__f__d__PG3) = -1;
S(a__x__PG3,a__f__bm__PG3) = -1;
S(a__x__PYR,a__f__e__MaeAB) = 1;
S(a__x__PYR,a__f__e__PykF) = 1;
S(a__x__PYR,a__f__e__PpsA) = -1;
S(a__x__PYR,a__f__e__Pdh) = -1;
S(a__x__PYR,a__f__pts__r1) = 1;
S(a__x__PYR,a__f__d__PYR) = -1;
S(a__x__PYR,a__f__bm__PYR) = -1;


%% Write steady state values into auxiliary variables
% The two auxiliary variables ssACT and ssGLC contain the
% steady states on acetate and glucose, respectively.
% Remember that these values, which have been obtained with
% simulations on acetate and glucose as sole carbon sources,
% depend on the chosen parameter set.
% The sole purpose of these two auxiliary variables is to allow
% for the initial conditions to be set to either steady state.
% An initial condition equal to a steady state is interesting
% when a transition to the other steady state is investigated.

ssACT(a__x__ACoA) = 2.045970006;
ssACT(a__x__AKG) = 1.11161563;
ssACT(a__x__cAMP) = 4.021170806;
ssACT(a__x__FBP) = 0.272276143;
ssACT(a__x__G6P) = 1.145931991;
ssACT(a__x__GLX) = 1.322800153;
ssACT(a__x__ICT) = 1.480239304;
ssACT(a__x__MAL) = 6.396156035;
ssACT(a__x__OAA) = 0.064573174;
ssACT(a__x__PEP) = 0.557008135;
ssACT(a__x__PG3) = 1.293579693;
ssACT(a__x__PYR) = 0.037723095;
ssACT(a__x__AceA) = 0.101787757;
ssACT(a__x__AceB) = 0.030536327;
ssACT(a__x__AceK) = 0.003053633;
ssACT(a__x__Acoa2act) = 0.001;
ssACT(a__x__Acs) = 0.010144567*0.000036201/0.001096222;
ssACT(a__x__Akg2mal) = 0.002192398;
ssACT(a__x__CAMPdegr) = 0.001;
ssACT(a__x__Cya) = 0.001;
ssACT(a__x__Emp) = 0.009751833*0.011389032/0.011515593;
ssACT(a__x__Eno) = 0.006304314*0.011389032/0.011552813;
ssACT(a__x__Fdp) = 0.000513512*0.000074810/0.000157492;
ssACT(a__x__GltA) = 0.003539257*0.000292771/0.001029612;
ssACT(a__x__Icd) = 0.002404566;
ssACT(a__x__Icd_P) = 0.007516755;
ssACT(a__x__Mdh) = 0.010969029*0.000491491/0.00345727;
ssACT(a__x__MaeAB) = 0.003399346;
ssACT(a__x__PckA) = 0.018902966*0.000336947/0.002290892;
ssACT(a__x__Pdh) = 0.001760705*0.001/0.004647401;
ssACT(a__x__PfkA) = 8.89703E-05*0.000242131/0.000143816;
ssACT(a__x__Ppc) = 0.000279893*0.000377962/0.000999714;
ssACT(a__x__PpsA) = 0.012844496;
ssACT(a__x__PykF) = 0.001305745*0.002501893/0.005977168;
ssACT(a__x__Cra) = 0.007009039;
ssACT(a__x__CraFBP) = 0.000280931;
ssACT(a__x__Crp) = 0.001327161;
ssACT(a__x__CrpcAMP) = 0.005962839;
ssACT(a__x__IclR) = 0.00729;
ssACT(a__x__PdhR) = 0.005926738;
ssACT(a__x__PdhRPYR) = 0.001363262;
ssACT(a__x__EIIA) = 0.002631995;
ssACT(a__x__EIIA_P) = 0.097368005;
ssACT(a__x__EIICB) = 0.003;

ssGLC(a__x__ACoA) = 0.351972298;
ssGLC(a__x__AKG) = 0.191190619;
ssGLC(a__x__cAMP) = 0.202804098;
ssGLC(a__x__FBP) = 6.57504207;
ssGLC(a__x__G6P) = 1.908140784;
ssGLC(a__x__GLX) = 5.70593E-09;
ssGLC(a__x__ICT) = 0.001408116;
ssGLC(a__x__MAL) = 3.278779135;
ssGLC(a__x__OAA) = 0.050535354;
ssGLC(a__x__PEP) = 0.210455879;
ssGLC(a__x__PG3) = 5.720977255;
ssGLC(a__x__PYR) = 0.863278018;
ssGLC(a__x__AceA) = 0.00472323;
ssGLC(a__x__AceB) = 0.001416969;
ssGLC(a__x__AceK) = 0.000141697;
ssGLC(a__x__Acoa2act) = 0.001;
ssGLC(a__x__Acs) = 0.000036201;%old: 0.001096222;
ssGLC(a__x__Akg2mal) = 0.001026848;
ssGLC(a__x__CAMPdegr) = 0.001;
ssGLC(a__x__Cya) = 0.001;
ssGLC(a__x__Emp) = 0.011389032;%old: 0.011515593;
ssGLC(a__x__Eno) = 0.011389032;%old: 0.011552813;
ssGLC(a__x__Fdp) = 0.000074810;%old: 0.000157492;
ssGLC(a__x__GltA) = 0.000292771;%old: 0.001029612;
ssGLC(a__x__Icd) = 0.004290789;
ssGLC(a__x__Icd_P) = 0.000220477;
ssGLC(a__x__Mdh) = 0.000491491;% old: 0.00345727;
ssGLC(a__x__MaeAB) = 0.000999714;
ssGLC(a__x__PckA) = 0.000336947;%old: 0.002290892;
ssGLC(a__x__Pdh) = 0.001;% old: 0.004647401;
ssGLC(a__x__PfkA) = 0.000242131;%old: 0.000143816;
ssGLC(a__x__Ppc) = 0.000377962;%old: 0.000999714;
ssGLC(a__x__PpsA) = 0.000987493;
ssGLC(a__x__PykF) = 0.002501893;%old: 0.005977168;
ssGLC(a__x__Cra) = 0.000299098;
ssGLC(a__x__CraFBP) = 0.006990902;
ssGLC(a__x__Crp) = 0.005943273;
ssGLC(a__x__CrpcAMP) = 0.001346727;
ssGLC(a__x__IclR) = 0.00729;
ssGLC(a__x__PdhR) = 0.001163813;
ssGLC(a__x__PdhRPYR) = 0.006126187;
ssGLC(a__x__EIIA) = 0.09647707;
ssGLC(a__x__EIIA_P) = 0.00352292;
ssGLC(a__x__EIICB) = 0.003;

   
%% rates   
        
        % Interpolate between pure glucose and pure acetate
        % growth conditions
        alphaGLC = x(a__x__GLC)/(x(a__x__GLC)+p(a__p__pts__Kglc));
        alphaACT = x(a__x__ACT)/(x(a__x__ACT)+p(a__p__e__Acs__Kact))*(1-x(a__x__GLC)/(x(a__x__GLC)+p(a__p__pts__Kglc)));
%          fprintf('alphaGLC = x(a__x__GLC)/(x(a__x__GLC)+p(a__p__pts__Kglc))\n');
%          fprintf('  %f = %f/(%f+%f)\n', alphaGLC, x(a__x__GLC), x(a__x__GLC), p(a__p__pts__Kglc));
  
        % Calculate the growth rate 'mu'
        mu = alphaGLC*p(a__p__bm__muGLC) + alphaACT*p(a__p__bm__muACT);
%          fprintf('mu = alphaGLC*p(a__p__bm__muGLC) + alphaACT*p(a__p__bm__muACT)\n');
%          fprintf('  %f = %f*%f + %f*%f\n', mu, alphaGLC, p(a__p__bm__muGLC), alphaACT, p(a__p__bm__muACT));
        
        % Calculate the first order rate constants of the seven biomass reactions
        k_bm_ACoA = alphaGLC*p(a__p__bm__GLC__ACoA) + alphaACT*p(a__p__bm__ACT__ACoA);
        k_bm_AKG = alphaGLC*p(a__p__bm__GLC__AKG) + alphaACT*p(a__p__bm__ACT__AKG);       
        k_bm_G6P = alphaGLC*p(a__p__bm__GLC__G6P) + alphaACT*p(a__p__bm__ACT__G6P);
        k_bm_OAA = alphaGLC*p(a__p__bm__GLC__OAA) + alphaACT*p(a__p__bm__ACT__OAA);
        k_bm_PEP = alphaGLC*p(a__p__bm__GLC__PEP) + alphaACT*p(a__p__bm__ACT__PEP);
        k_bm_PG3 = alphaGLC*p(a__p__bm__GLC__PG3) + alphaACT*p(a__p__bm__ACT__PG3);
        k_bm_PYR = alphaGLC*p(a__p__bm__GLC__PYR) + alphaACT*p(a__p__bm__ACT__PYR);
        fprintf('k_bm_PYR = %f\n', k_bm_PYR);
        
        % Calculate biomass reaction rates with 1st order kinetics
        f([
        a__f__bm__ACoA
        a__f__bm__AKG
        a__f__bm__G6P
        a__f__bm__OAA
        a__f__bm__PEP
        a__f__bm__PG3
        a__f__bm__PYR
        ]) = [
        k_bm_ACoA
        k_bm_AKG
        k_bm_G6P
        k_bm_OAA
        k_bm_PEP
        k_bm_PG3
        k_bm_PYR
        ] .* [
        x(a__x__ACoA)
        x(a__x__AKG)
        x(a__x__G6P)
        x(a__x__OAA)
        x(a__x__PEP)
        x(a__x__PG3)
        x(a__x__PYR) ];
    
        % Calculate the actual steady state levels of MaeAB and Ppc
        SS_MaeAB = alphaGLC*ssGLC(a__x__MaeAB) + alphaACT*ssACT(a__x__MaeAB);
        SS_Ppc = alphaGLC*ssGLC(a__x__Ppc) + alphaACT*ssACT(a__x__Ppc);
     
        
        %% Protein phosphorylation rates
        
        % PTS phosphorylation kinetics
        f(a__f__pts__r1) = p(a__p__pts__k1)*x(a__x__PEP)*x(a__x__EIIA)-p(a__p__pts__km1)*x(a__x__PYR)*x(a__x__EIIA_P);
        f(a__f__pts__r4) = p(a__p__pts__k4)*x(a__x__EIICB)*x(a__x__EIIA_P)*x(a__x__GLC)/((p(a__p__pts__KEIIA)+x(a__x__EIIA_P))*(p(a__p__pts__Kglc)+x(a__x__GLC)));
        
        % AceK_ki kinetics: MWC, substrate: Icd, inhibitors: GLX, ICT, OAA,
        % PEP, PG3, PYR, AKG
        f(a__f__e__AceK_Ki) = x(a__x__AceK)*p(a__p__e__AceK__kcat_ki)*x(a__x__Icd)/p(a__p__e__AceK__Kicd)*(1+x(a__x__Icd)/p(a__p__e__AceK__Kicd))^(p(a__p__e__AceK__n)-1)/((1+x(a__x__Icd)/p(a__p__e__AceK__Kicd))^p(a__p__e__AceK__n)+p(a__p__e__AceK__L)*(1+x(a__x__ICT)/p(a__p__e__AceK__Kict)+x(a__x__GLX)/p(a__p__e__AceK__Kglx)+x(a__x__OAA)/p(a__p__e__AceK__Koaa)+x(a__x__AKG)/p(a__p__e__AceK__Kakg)+x(a__x__PEP)/p(a__p__e__AceK__Kpep)+x(a__x__PG3)/p(a__p__e__AceK__Kpg3)+x(a__x__PYR)/p(a__p__e__AceK__Kpyr))^p(a__p__e__AceK__n));
        
        % AceK_ph kinetics: MWC, substrate: Icd_P, activators: OAA, PEP,
        % PG3, PYR, AKG
        f(a__f__e__AceK_Ph) = x(a__x__AceK)*p(a__p__e__AceK__kcat_ph)*x(a__x__Icd_P)/p(a__p__e__AceK__Kicd_P)*(1+x(a__x__Icd_P)/p(a__p__e__AceK__Kicd_P))^(p(a__p__e__AceK__n)-1)/((1+x(a__x__Icd_P)/p(a__p__e__AceK__Kicd_P))^p(a__p__e__AceK__n)+p(a__p__e__AceK__L)/(1+x(a__x__OAA)/p(a__p__e__AceK__Koaa)+x(a__x__AKG)/p(a__p__e__AceK__Kakg)+x(a__x__PEP)/p(a__p__e__AceK__Kpep)+x(a__x__PG3)/p(a__p__e__AceK__Kpg3)+x(a__x__PYR)/p(a__p__e__AceK__Kpyr))^p(a__p__e__AceK__n)); 
 
        
        %% Metabolite- transcription factor binding rates
        % The IclR-GLX-PYR binding state is incorporated into the gene
        % expression kinetics of the aceBAK operon
        
        % Cra-FBP binding kinetics: Hill
        f(a__f__tf__Cra) = p(a__p__tf__Cra__scale)*((x(a__x__Cra)+x(a__x__CraFBP))*x(a__x__FBP)^p(a__p__tf__Cra__n)/(x(a__x__FBP)^p(a__p__tf__Cra__n)+p(a__p__tf__Cra__kfbp)^p(a__p__tf__Cra__n))-x(a__x__CraFBP));
        
        % Crp-cAMP binding kinetics: Hill
        f(a__f__tf__Crp) = p(a__p__tf__Crp__scale)*((x(a__x__Crp)+x(a__x__CrpcAMP))*x(a__x__cAMP)^p(a__p__tf__Crp__n)/(x(a__x__cAMP)^p(a__p__tf__Crp__n)+p(a__p__tf__Crp__kcamp)^p(a__p__tf__Crp__n))-x(a__x__CrpcAMP));
        
        % PdhR-PYR binding kinetics: Hill
        f(a__f__tf__PdhR) = p(a__p__tf__PdhR__scale)*((x(a__x__PdhR)+x(a__x__PdhRPYR))*x(a__x__PYR)^p(a__p__tf__PdhR__n)/(x(a__x__PYR)^p(a__p__tf__PdhR__n)+p(a__p__tf__PdhR__kpyr)^p(a__p__tf__PdhR__n))-x(a__x__PdhRPYR));

        
        %% Metabolic reaction rates
        
        % AceA kinetics: MWC, substrate: ICT, inhibitors: PG3, PEP, AKG      
        f(a__f__e__AceA) = x(a__x__AceA)*p(a__p__e__AceA__kcat)*x(a__x__ICT)/p(a__p__e__AceA__Kict)*(1+x(a__x__ICT)/p(a__p__e__AceA__Kict))^(p(a__p__e__AceA__n)-1)/((1+x(a__x__ICT)/p(a__p__e__AceA__Kict))^p(a__p__e__AceA__n)+p(a__p__e__AceA__L)*(1+x(a__x__PEP)/p(a__p__e__AceA__Kpep)+x(a__x__PG3)/p(a__p__e__AceA__Kpg3)+x(a__x__AKG)/p(a__p__e__AceA__Kakg))^p(a__p__e__AceA__n));
        
        % AceB kinetics: Two-substrate MM, substrates: GLX, ACoA   
        f(a__f__e__AceB) = x(a__x__AceB)*p(a__p__e__AceB__kcat)*x(a__x__GLX)*x(a__x__ACoA)/(p(a__p__e__AceB__Kglxacoa)*p(a__p__e__AceB__Kacoa)+p(a__p__e__AceB__Kacoa)*x(a__x__GLX)+p(a__p__e__AceB__Kglx)*x(a__x__ACoA)+x(a__x__GLX)*x(a__x__ACoA));
           
        % Acoa2act kinetics: MWC, substrate: ACoA, activator: PYR
        f(a__f__e__Acoa2act) = x(a__x__Acoa2act)*p(a__p__e__Acoa2act__kcat)*x(a__x__ACoA)/p(a__p__e__Acoa2act__Kacoa)*(1+x(a__x__ACoA)/p(a__p__e__Acoa2act__Kacoa))^(p(a__p__e__Acoa2act__n)-1)/((1+x(a__x__ACoA)/p(a__p__e__Acoa2act__Kacoa))^p(a__p__e__Acoa2act__n)+p(a__p__e__Acoa2act__L)/(1+x(a__x__PYR)/p(a__p__e__Acoa2act__Kpyr))^p(a__p__e__Acoa2act__n));
        
        % Acs kinetics: MM, substrate: ACT
        f(a__f__e__Acs) = x(a__x__Acs)*p(a__p__e__Acs__kcat)*x(a__x__ACT)/(x(a__x__ACT)+p(a__p__e__Acs__Kact));
        
        % Akg2mal kinetics: MM, substrate: AKG
        f(a__f__e__Akg2mal) = x(a__x__Akg2mal)*p(a__p__e__Akg2mal__kcat)*x(a__x__AKG)/(x(a__x__AKG)+p(a__p__e__Akg2mal__Kakg));
        
        % CAMPdegr kinetics: MM, substrate: cAMP
        f(a__f__e__CAMPdegr) = p(a__p__e__CAMPdegr__kcat)*x(a__x__CAMPdegr)*x(a__x__cAMP)/(x(a__x__cAMP)+p(a__p__e__CAMPdegr__KcAMP));
        
        % Cya kinetics: MM, substrate: Cya
        f(a__f__e__Cya) = p(a__p__e__Cya__kcat)*x(a__x__Cya)*x(a__x__EIIA_P)/(x(a__x__EIIA_P)+p(a__p__e__Cya__KEIIA));
        
        % Emp kinetics: reversible MM, substrates: FBP, PG3
        f(a__f__e__Emp) = (x(a__x__Emp)*p(a__p__e__Emp__kcat__f)*x(a__x__FBP)/p(a__p__e__Emp__Kfbp)-x(a__x__Emp)*p(a__p__e__Emp__kcat__r)*x(a__x__PG3)/p(a__p__e__Emp__Kpg3))/(1+x(a__x__FBP)/p(a__p__e__Emp__Kfbp)+x(a__x__PG3)/p(a__p__e__Emp__Kpg3));
        
        % Eno kinetics: reversible MM, substrates: PG3, PEP
        f(a__f__e__Eno) = (x(a__x__Eno)*p(a__p__e__Eno__kcatf)*x(a__x__PG3)/p(a__p__e__Eno__Kpg3)-x(a__x__Eno)*p(a__p__e__Eno__kcatr)*x(a__x__PEP)/p(a__p__e__Eno__Kpep))/(1+x(a__x__PG3)/p(a__p__e__Eno__Kpg3)+x(a__x__PEP)/p(a__p__e__Eno__Kpep));
        
        % Fdp kinetics: MWC, substrate: FBP, activator: PEP
        f(a__f__e__Fdp) = x(a__x__Fdp)*p(a__p__e__Fdp__kcat)*x(a__x__FBP)/p(a__p__e__Fdp__Kfbp)*(1+x(a__x__FBP)/p(a__p__e__Fdp__Kfbp))^(p(a__p__e__Fdp__n)-1)/((1+x(a__x__FBP)/p(a__p__e__Fdp__Kfbp))^p(a__p__e__Fdp__n)+p(a__p__e__Fdp__L)/(1+x(a__x__PEP)/p(a__p__e__Fdp__Kpep))^p(a__p__e__Fdp__n));
        
        % GltA kinetics: Two-substrate MM, substrates: OAA, ACoA,
        % competitive inhibitor: AKG
        f(a__f__e__GltA) = x(a__x__GltA)*p(a__p__e__GltA__kcat)*x(a__x__OAA)*x(a__x__ACoA)/((1+x(a__x__AKG)/p(a__p__e__GltA__Kakg))*p(a__p__e__GltA__Koaaacoa)*p(a__p__e__GltA__Kacoa)+p(a__p__e__GltA__Kacoa)*x(a__x__OAA)+(1+x(a__x__AKG)/p(a__p__e__GltA__Kakg))*p(a__p__e__GltA__Koaa)*x(a__x__ACoA)+x(a__x__OAA)*x(a__x__ACoA));
        
        % Icd kinetics: MWC, substrate: ICT, inhibitor: PEP
        f(a__f__e__Icd) = x(a__x__Icd)*p(a__p__e__Icd__kcat)*x(a__x__ICT)/p(a__p__e__Icd__Kict)*(1+x(a__x__ICT)/p(a__p__e__Icd__Kict))^(p(a__p__e__Icd__n)-1)/((1+x(a__x__ICT)/p(a__p__e__Icd__Kict))^p(a__p__e__Icd__n)+p(a__p__e__Icd__L)*(1+x(a__x__PEP)/p(a__p__e__Icd__Kpep))^p(a__p__e__Icd__n));
        
        % MaeAB kinetics: MWC, substrate: MAL, inhibitors: AcoA, cAMP
        f(a__f__e__MaeAB) = x(a__x__MaeAB)*p(a__p__e__MaeAB__kcat)*x(a__x__MAL)/p(a__p__e__MaeAB__Kmal)*(1+x(a__x__MAL)/p(a__p__e__MaeAB__Kmal))^(p(a__p__e__MaeAB__n)-1)/((1+x(a__x__MAL)/p(a__p__e__MaeAB__Kmal))^p(a__p__e__MaeAB__n)+p(a__p__e__MaeAB__L)*(1+x(a__x__ACoA)/p(a__p__e__MaeAB__Kacoa)+x(a__x__cAMP)/p(a__p__e__MaeAB__Kcamp))^p(a__p__e__MaeAB__n));
        
        % Mdh kinetics: Hill, substrate: MAL
        f(a__f__e__Mdh) = x(a__x__Mdh)*p(a__p__e__Mdh__kcat)*x(a__x__MAL)^p(a__p__e__Mdh__n)/(x(a__x__MAL)^p(a__p__e__Mdh__n)+p(a__p__e__Mdh__Kmal)^p(a__p__e__Mdh__n));
        
        % PckA kinetics: MM, substrate: OAA, competitive inhibitor: PEP
        f(a__f__e__PckA) = x(a__x__PckA)*p(a__p__e__PckA__kcat)*x(a__x__OAA)/(x(a__x__OAA)+p(a__p__e__PckA__Koaa)*(1+x(a__x__PEP)/p(a__p__e__PckA__Kpep)));
        
        % Pdh kinetics: MWC, substrate: PYR, inhibitors: GLX, PYR
        f(a__f__e__Pdh) = x(a__x__Pdh)*p(a__p__e__Pdh__kcat)*x(a__x__PYR)/p(a__p__e__Pdh__Kpyr)*(1+x(a__x__PYR)/p(a__p__e__Pdh__Kpyr))^(p(a__p__e__Pdh__n)-1)/((1+x(a__x__PYR)/p(a__p__e__Pdh__Kpyr))^p(a__p__e__Pdh__n)+p(a__p__e__Pdh__L)*(1+x(a__x__GLX)/p(a__p__e__Pdh__Kglx)+x(a__x__PYR)/p(a__p__e__Pdh__KpyrI))^p(a__p__e__Pdh__n));
        
        % PfkA kinetics: MWC, substrate: G6P, inhibitor: PEP
        f(a__f__e__PfkA) = x(a__x__PfkA)*p(a__p__e__PfkA__kcat)*x(a__x__G6P)/p(a__p__e__PfkA__Kg6p)*(1+x(a__x__G6P)/p(a__p__e__PfkA__Kg6p))^(p(a__p__e__PfkA__n)-1)/((1+x(a__x__G6P)/p(a__p__e__PfkA__Kg6p))^p(a__p__e__PfkA__n)+p(a__p__e__PfkA__L)*(1+x(a__x__PEP)/p(a__p__e__PfkA__Kpep))^p(a__p__e__PfkA__n));
        
        % Ppc kinetics: MWC, substrate: PEP, activator: FBP
        f(a__f__e__Ppc) = x(a__x__Ppc)*p(a__p__e__Ppc__kcat)*x(a__x__PEP)/p(a__p__e__Ppc__Kpep)*(1+x(a__x__PEP)/p(a__p__e__Ppc__Kpep))^(p(a__p__e__Ppc__n)-1)/((1+x(a__x__PEP)/p(a__p__e__Ppc__Kpep))^p(a__p__e__Ppc__n)+p(a__p__e__Ppc__L)/(1+x(a__x__FBP)/p(a__p__e__Ppc__Kfbp))^p(a__p__e__Ppc__n));
        
        % PpsA kinetics: MWC, substrate: PYR, inhibitor: PEP
        f(a__f__e__PpsA) = x(a__x__PpsA)*p(a__p__e__PpsA__kcat)*x(a__x__PYR)/p(a__p__e__PpsA__Kpyr)*(1+x(a__x__PYR)/p(a__p__e__PpsA__Kpyr))^(p(a__p__e__PpsA__n)-1)/((1+x(a__x__PYR)/p(a__p__e__PpsA__Kpyr))^p(a__p__e__PpsA__n)+p(a__p__e__PpsA__L)*(1+x(a__x__PEP)/p(a__p__e__PpsA__Kpep))^p(a__p__e__PpsA__n));
        
        % PykF kinetics: MWC, substrate: PEP, activator: FBP
        f(a__f__e__PykF) = x(a__x__PykF)*p(a__p__e__PykF__kcat)*x(a__x__PEP)/p(a__p__e__PykF__Kpep)*(1+x(a__x__PEP)/p(a__p__e__PykF__Kpep))^(p(a__p__e__PykF__n)-1)/((1+x(a__x__PEP)/p(a__p__e__PykF__Kpep))^p(a__p__e__PykF__n)+p(a__p__e__PykF__L)/(1+x(a__x__FBP)/p(a__p__e__PykF__Kfbp))^p(a__p__e__PykF__n));
        fprintf('f(a__f__e__PykF) = %f\n', f(a__f__e__PykF));
        stop;
               
        
        %% Gene expression rates
        
        % aceBAK expression: sum of the following three kinetics
        % MM plus basal expression, substrate: Cra
        % MM plus basal expression, substrate: Crpcamp
        % MWC-like, substrate: IclR, activator: GLX, inhibitor: PYR 
        % aceB and aceK expression are coupled to aceA expression
        % with constant factors
        f(a__f__g__aceA) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__aceBAK__Kcra)))*p(a__p__g__aceBAK__vcra_unbound)...
            +x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__aceBAK__Kcra))*p(a__p__g__aceBAK__vcra_bound)...
            +(1-x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__aceBAK__Kcrp)))*p(a__p__g__aceBAK__vcrp_unbound)...
            +x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__aceBAK__Kcrp))*p(a__p__g__aceBAK__vcrp_bound)...
            +p(a__p__g__aceBAK__kcat_iclr)*x(a__x__IclR)*(1-(p(a__p__g__aceBAK__DNA)/p(a__p__g__aceBAK__KDNA))...
            *(1+x(a__x__PYR)/p(a__p__g__aceBAK__KPprime))/(1+(x(a__x__GLX)/p(a__p__g__aceBAK__KG)...
            *(1+x(a__x__GLX)/p(a__p__g__aceBAK__KG)))/p(a__p__g__aceBAK__L)...
            +p(a__p__g__aceBAK__DNA)/p(a__p__g__aceBAK__KDNA)+x(a__x__PYR)/p(a__p__g__aceBAK__KP)...
            +p(a__p__g__aceBAK__DNA)*x(a__x__PYR)/p(a__p__g__aceBAK__KDNA)/p(a__p__g__aceBAK__KPprime))));
        f(a__f__g__aceB) = p(a__p__g__aceBAK__aceBfactor)*f(a__f__g__aceA);
        f(a__f__g__aceK) = p(a__p__g__aceBAK__aceKfactor)*f(a__f__g__aceA);
        
        % acoa2act kinetics: constitutive expression
        f(a__f__g__acoa2act) = 0;
        
        % acs kinetics: Hill plus basal expression, substrate: Crpcamp
        f(a__f__g__acs) = p(a__p__bm__k_expr)*mu*((1-x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n)))*p(a__p__g__acs__vcrp_unbound)+x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n))*p(a__p__g__acs__vcrp_bound));
%          disp('g_acs = p(a__p__bm__k_expr)*mu*((1-x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n)))*p(a__p__g__acs__vcrp_unbound)+x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n))*p(a__p__g__acs__vcrp_bound)) = ');
%          fprintf('  %f = %f*%f*(', f(a__f__g__acs), p(a__p__bm__k_expr), mu); % p(a__p__bm__k_expr)*mu
%          fprintf('1-%f^%f/(%f^%f+%f^%f)', x(a__x__CrpcAMP),p(a__p__g__acs__n),x(a__x__CrpcAMP),p(a__p__g__acs__n),p(a__p__g__acs__Kcrp),p(a__p__g__acs__n)); % 1-x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n))
%          fprintf(')*%f+(', p(a__p__g__acs__vcrp_unbound)); %*p(a__p__g__acs__vcrp_unbound)+
%          fprintf('%f^%f/(%f^%f+%f^%f)*%f', x(a__x__CrpcAMP), p(a__p__g__acs__n), x(a__x__CrpcAMP), p(a__p__g__acs__n), p(a__p__g__acs__Kcrp), p(a__p__g__acs__n), p(a__p__g__acs__vcrp_bound)); %x(a__x__CrpcAMP)^p(a__p__g__acs__n)/(x(a__x__CrpcAMP)^p(a__p__g__acs__n)+p(a__p__g__acs__Kcrp)^p(a__p__g__acs__n))*p(a__p__g__acs__vcrp_bound)
%          fprintf('\np(a__p__g__acs__n) = %f (index %d)\n', p(a__p__g__acs__n), a__p__g__acs__n);
%          stop;

        % akg2mal kinetics: Hill plus basal expression, substrate: Crpcamp
        f(a__f__g__akg2mal) = p(a__p__bm__k_expr)*mu*((1-x(a__x__CrpcAMP)^p(a__p__g__akg2mal__n)/(x(a__x__CrpcAMP)^p(a__p__g__akg2mal__n)+p(a__p__g__akg2mal__Kcrp)^p(a__p__g__akg2mal__n)))*p(a__p__g__akg2mal__vcrp_unbound)+x(a__x__CrpcAMP)^p(a__p__g__akg2mal__n)/(x(a__x__CrpcAMP)^p(a__p__g__akg2mal__n)+p(a__p__g__akg2mal__Kcrp)^p(a__p__g__akg2mal__n))*p(a__p__g__akg2mal__vcrp_bound));
        
        % campdegr kinetics: constitutive expression
        f(a__f__g__campdegr) = 0;
        
        % cra kinetics: constitutive expression
        f(a__f__g__cra) = 0;
        
        % crp kinetics: constitutive expression
        f(a__f__g__crp) = 0;
        
        % cya kinetics: constitutive expression
        f(a__f__g__cya) = 0;
        
        % emp kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__emp) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__emp__Kcra)))*p(a__p__g__emp__vcra_unbound)...
            +x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__emp__Kcra))*p(a__p__g__emp__vcra_bound)...
            +(1-x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__emp__Kcrp)))*p(a__p__g__emp__vcrp_unbound)...
            +x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__emp__Kcrp))*p(a__p__g__emp__vcrp_bound));
        
        % eno kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__eno) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__eno__Kcra)))*p(a__p__g__eno__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__eno__Kcra))*p(a__p__g__eno__vcra_bound));
        
        % fdp kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__fdp) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__fdp__Kcra)))*p(a__p__g__fdp__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__fdp__Kcra))*p(a__p__g__fdp__vcra_bound));
        
        % gltA kinetics: Hill plus basal expression, substrate: Crpcamp
        f(a__f__g__gltA) = p(a__p__bm__k_expr)*mu*((1-x(a__x__CrpcAMP)^p(a__p__g__gltA__n)/(x(a__x__CrpcAMP)^p(a__p__g__gltA__n)+p(a__p__g__gltA__Kcrp)^p(a__p__g__gltA__n)))*p(a__p__g__gltA__vcrp_unbound)+x(a__x__CrpcAMP)^p(a__p__g__gltA__n)/(x(a__x__CrpcAMP)^p(a__p__g__gltA__n)+p(a__p__g__gltA__Kcrp)^p(a__p__g__gltA__n))*p(a__p__g__gltA__vcrp_bound));
        
        % icd kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__icd) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__icd__Kcra)))*p(a__p__g__icd__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__icd__Kcra))*p(a__p__g__icd__vcra_bound));
        
        % iclr expression: constitutive
        f(a__f__g__iclr) = 0;
        
        % mdh kinetics: MM plus basal expression, substrate: Crpcamp
        f(a__f__g__mdh) = p(a__p__bm__k_expr)*mu*((1-x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__mdh__Kcrp)))*p(a__p__g__mdh__vcrp_unbound)+x(a__x__CrpcAMP)/(x(a__x__CrpcAMP)+p(a__p__g__mdh__Kcrp))*p(a__p__g__mdh__vcrp_bound));
        
        % me kinetics: growth rate- dependent constitutive expression
        f(a__f__g__maeAB) = (mu+p(a__p__d__k_degr))*SS_MaeAB;
        
        % pckA kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__pckA) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pckA__Kcra)))*p(a__p__g__pckA__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pckA__Kcra))*p(a__p__g__pckA__vcra_bound));
        
        % pdh kinetics: MM plus basal expression, substrate: PdhR
        f(a__f__g__pdh) = p(a__p__bm__k_expr)*mu*((1-x(a__x__PdhR)/(x(a__x__PdhR)+p(a__p__g__pdh__Kpdhr)))*p(a__p__g__pdh__vpdhr_unbound)+x(a__x__PdhR)/(x(a__x__PdhR)+p(a__p__g__pdh__Kpdhr))*p(a__p__g__pdh__vpdhr_bound));
        
        % pdhr expression: constitutive
        f(a__f__g__pdhr) = 0;
        
        % pfkA kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__pfkA) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pfkA__Kcra)))*p(a__p__g__pfkA__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pfkA__Kcra))*p(a__p__g__pfkA__vcra_bound));
        
        % ppc kinetics: growth rate- dependent constitutive expression
        f(a__f__g__ppc) = (mu+p(a__p__d__k_degr))*SS_Ppc;
        
        % ppsA kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__ppsA) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__ppsA__Kcra)))*p(a__p__g__ppsA__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__ppsA__Kcra))*p(a__p__g__ppsA__vcra_bound));
        
        % pykF kinetics: MM plus basal expression, substrate: Cra
        f(a__f__g__pykF) = p(a__p__bm__k_expr)*mu*((1-x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pykF__Kcra)))*p(a__p__g__pykF__vcra_unbound)+x(a__x__Cra)/(x(a__x__Cra)+p(a__p__g__pykF__Kcra))*p(a__p__g__pykF__vcra_bound));
               
        % EIIA kinetics: constitutive expression
        f(a__f__g__EIIA) = 0;
        
        % EIICB kinetics: constitutive expression
        f(a__f__g__EIICB) = 0;
        
        
        %% Protein degradation and dilution rates
        % Constitutively produced proteins are neither produced,
        % nor degraded, nor diluted, to keep their levels constant__
        % All other proteins degrade with a constant rate,
        % and dilute with the growth rate
        
        f(a__f__d__AceA) = (mu+p(a__p__d__k_degr))*x(a__x__AceA);
        f(a__f__d__AceB) = (mu+p(a__p__d__k_degr))*x(a__x__AceB);
        f(a__f__d__AceK) = (mu+p(a__p__d__k_degr))*x(a__x__AceK);
        f(a__f__d__Acoa2act) = 0;
        f(a__f__d__Acs) = (mu+p(a__p__d__k_degr))*x(a__x__Acs);
        f(a__f__d__Akg2mal) = (mu+p(a__p__d__k_degr))*x(a__x__Akg2mal);
        f(a__f__d__CAMPdegr) = 0;
        f(a__f__d__Cra) = 0;
        f(a__f__d__CraFBP) = 0;
        f(a__f__d__Crp) = 0;
        f(a__f__d__CrpcAMP) = 0;
        f(a__f__d__Cya)  = 0;
        f(a__f__d__Emp)  = (mu+p(a__p__d__k_degr))*x(a__x__Emp);
        f(a__f__d__Eno)  = (mu+p(a__p__d__k_degr))*x(a__x__Eno);
        f(a__f__d__Fdp)  = (mu+p(a__p__d__k_degr))*x(a__x__Fdp);
        f(a__f__d__GltA) = (mu+p(a__p__d__k_degr))*x(a__x__GltA);
        f(a__f__d__Icd) = (mu+p(a__p__d__k_degr))*x(a__x__Icd);
        f(a__f__d__Icd_P) = (mu+p(a__p__d__k_degr))*x(a__x__Icd_P);
        f(a__f__d__IclR) = 0;
        f(a__f__d__Mdh)  = (mu+p(a__p__d__k_degr))*x(a__x__Mdh);
        f(a__f__d__MaeAB) = (mu+p(a__p__d__k_degr))*x(a__x__MaeAB);
        f(a__f__d__PckA) = (mu+p(a__p__d__k_degr))*x(a__x__PckA);
        f(a__f__d__Pdh)  = (mu+p(a__p__d__k_degr))*x(a__x__Pdh);
        f(a__f__d__PdhR) = 0;
        f(a__f__d__PdhRPYR) = 0;
        f(a__f__d__PfkA) = (mu+p(a__p__d__k_degr))*x(a__x__PfkA);
        f(a__f__d__Ppc)  = (mu+p(a__p__d__k_degr))*x(a__x__Ppc);
        f(a__f__d__PpsA) = (mu+p(a__p__d__k_degr))*x(a__x__PpsA);
        f(a__f__d__PykF) = (mu+p(a__p__d__k_degr))*x(a__x__PykF);
        f(a__f__d__EIIA) = 0;
        f(a__f__d__EIIA_P) = 0;
        f(a__f__d__EIICB) = 0;
        
        
        %% Metabolite dilution rates
        % Intracellular metabolites do not degrade,
        % only dilute with the growth rate__
        
        f(a__f__d__ACoA) = mu*x(a__x__ACoA);
        f(a__f__d__AKG) = mu*x(a__x__AKG);
        f(a__f__d__cAMP) = mu*x(a__x__cAMP);
        f(a__f__d__FBP) = mu*x(a__x__FBP);
        f(a__f__d__G6P) = mu*x(a__x__G6P);
        f(a__f__d__GLX) = mu*x(a__x__GLX);
        f(a__f__d__ICT) = mu*x(a__x__ICT);
        f(a__f__d__MAL) = mu*x(a__x__MAL);
        f(a__f__d__OAA) = mu*x(a__x__OAA);
        f(a__f__d__PEP) = mu*x(a__x__PEP);
        f(a__f__d__PG3) = mu*x(a__x__PG3);
        f(a__f__d__PYR) = mu*x(a__x__PYR);
       
        
        %% Environmental interaction

        % Let the cell population grow with the actual growth rate
        f(a__f__env__growth) = x(a__x__OD)*mu;
        
        % Scale glucose uptake from the environment with the
        % actual population size 
        f(a__f__env__GLCup) = p(a__p__env__uc)*p(a__p__env__M_GLC)*x(a__x__OD)*f(a__f__pts__r4);
        
        % Scale acetate uptake from the environment with the
        % actual population size
        f(a__f__env__ACTup) = p(a__p__env__uc)*p(a__p__env__M_ACT)*x(a__x__OD)*f(a__f__e__Acs);
        
        % Scale acetate excretion to the environment with the
        % actual population size for all scenarios except 1 and 4,
        % for which glucose should remain the sole carbon source -
        % in these cases, the excreted acetate is directed to nowhere__

            f(a__f__env__ACTex) = p(a__p__env__uc)*p(a__p__env__M_ACT)*x(a__x__OD)*f(a__f__e__Acoa2act);
        

       dxdt = S*f';  % return the state derivatives dx = S*f' ...
         
        
    end % of nested function ecoliOK_core