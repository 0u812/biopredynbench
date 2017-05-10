function ydot = b4_dyn_p(t, y, p)

if size(t,1) ~= 1 % this is because some solvers use (x,t) and others (t,x)
    newt = y;
    y = t;
    t = newt;
end

%% PARAMETERS
par = p;

%% MODEL CONSTANTS:
nm = 35;
nr = 32;

c = zeros(nm,1);
cs = zeros(nm,1);
cap = ones(nr,1);
 
fp(1) = 0.0D0;

for i=1:nm
 c(i) = y(i);
 cs(i)= 0.0D0;
end

% specific volume [g DW/l cytosol]
rho = 141.4710605D0;
% c, volume fraction
vol_1 = 0.9D0;
% m, volume fraction
vol_2 = 0.1D0;

% EXCHANGE_glc
rss (1) = 83401.9654177705D0;
% EXCHANGE_lac
rss (2) = 127877.37232994902D0;
% EXCHANGE_leu
rss (3) = 603.4140712332287D0;
% EXCHANGE_met
rss (4) = 603.4140712332287D0;
% EXCHANGE_product
rss (5) = 5.028450593613567D0;
% Glud1
rss (6) = 2413.6562849217303D0*vol_1*1.0/vol_2;
% Glul
rss (7) = 603.414071180172D0;
% Got2
rss (8) = 40133.38664791273D0*vol_1*1.0/vol_2;
% Mdh2
rss (9) = 74836.04665510054D0*vol_1*1.0/vol_2;
% ND1_a
rss (10) = 180754.26889005644D0*vol_1*1.0/vol_2;
% Pklr
rss (11) = 164390.2745505474D0;
% Subset0
rss (12) = 36512.902220891134D0;
% Subset1
rss (13) = 166803.93083553354D0;
% Subset2
rss (14) = 39529.972576829896D0;
% Subset26
rss (15) = 1810.242213701644D0;
% Subset3
rss (16) = 127877.37232994902D0;
% Subset35
rss (17) = 166200.51676427448D0;
% Subset37
rss (18) = 216060.34296802033D0*vol_1*1.0/vol_2;
% Subset4
rss (19) = 5.028450593613567D0;
% Subset5
rss (20) = 35306.0740779408D0*vol_1*1.0/vol_2;
% Ucp
rss (21) = 0.0D0*vol_1*1.0/vol_2;
% adencarr
rss (22) = 532531.1670427525D0;
% akgcarr
rss (23) = 38926.55850561767D0;
% aspglucarr
rss (24) = 40133.38664808034D0;
% atpase
rss (25) = 689982.1797742102D0;
% atpase1
rss (26) = 495414.85075147304D0*vol_1*1.0/vol_2;
% dicarr
rss (27) = 2413.6562849329107D0;
% feed_glc
rss (28) = 83401.9654177705D0;
% feed_leu
rss (29) = 603.4140712332287D0;
% feed_met
rss (30) = 603.4140712332287D0;
% glucarr
rss (31) = 2413.656284931604D0;
% mitphocarr
rss (32) = 533134.5811139438D0;

% steady-state reference concentrations:
      css(1)=100000;
      css(2)=1;
      css(3)=1000;
      css(4)=1000;
      css(5)=30;
      css(6)=1000;
      css(7)=1000;
      css(8)=1000;
      css(9)=1000;
      css(10)=1000;
      css(11)=1000;
      css(12)=1000;
      css(13)=3000;
      css(14)=1000;
      css(15)=1000;
      css(16)=1000;
      css(17)=100;
      css(18)=100;
      css(19)=100;
      css(20)=100;
      css(21)=1000;
      css(22)=1000;
      css(23)=1000;
      css(24)=1000;
      css(25)=1000;
      css(26)=1000;
      css(27)=1000;
      css(28)=1000;
      css(29)=1000;
      css(30)=3000;
      css(31)=100000;
      css(32)=1000;
      css(33)=1000;
      css(34)=1000;
      
    
%% NEW PARAMETER INDICES:
e = zeros(128,1); % 'par' has size 117
for i=1:8
e(i)= par(i);
end
e(9)= 0.0D0;
e(10)= 1.0D0;
e(11)= 0.0D0;
e(12)= 0.0D0;
e(13)= 1.0D0;
for i=9:35
e(i+5)= par(i);
end
e(41) = 0.0D0;
for i=36:41
e(i+6)= par(i);
end
e(48) = 0.0D0;
for i=42:83 
e(i+7)= par(i);
end
e(91) = 0.0D0;
e(92) = 0.0D0;
e(93) = par(84);
e(94) = 0.7D0;
e(95) = -2.0D-1;
for i=85:117 
e(i+11)= par(i);
end

% CHANGE SIGN OF NEGATIVE PARAMETERS:
    e(16) = -par(11);
	e(17) = -par(12);
	e(20) = -par(15);
	e(21) = -par(16);
	e(24) = -par(19);
	e(25) = -par(20);
	e(29) = -par(24);
	e(30) = -par(25);
	e(34) = -par(29);
	e(35) = -par(30);
	e(36) = -par(31);
	e(39) = -par(34);
	e(40) = -par(35);
	e(45) = -par(39);
	e(46) = -par(40);
	e(49) = -par(42);
	e(52) = -par(45);
	e(53) = -par(46);
	e(55) = -par(48);
	e(56) = -par(49);
	e(57) = -par(50);
	e(61) = -par(54);
	e(62) = -par(55);
	e(63) = -par(56);
	e(65) = -par(58);
	e(69) = -par(62);
	e(70) = -par(63);
	e(71) = -par(64);
	e(74) = -par(67);
	e(75) = -par(68);
	e(77) = -par(70);
	e(80) = -par(73);
	e(81) = -par(74);
	e(87) = -par(80);
	e(88) = -par(81);
	e(89) = -par(82);
	e(90) = -par(83);
	e(93) = -par(84);
	e(98) = -par(87);
	e(99) = -par(88);
	e(102) = -par(91);
	e(103) = -par(92);
	e(106) = -par(95);
	e(107) = -par(96);
	e(109) = -par(98);
	e(113) = -par(102);
	e(114) = -par(103);
	e(117) = -par(106);
	e(119) = -par(108);
	e(121) = -par(110);
	e(123) = -par(112);
	e(125) = -par(114);
	e(127) = -par(116);
	e(128) = -par(117);

%% DYNAMICS

clogk = zeros(35,1);
conc  = zeros(35,1);

for i=1:nm
    if ( c(i) < 0.0D0 )
      clogk(i)=0.0D0;
     else
      clogk(i)=log(c(i));
    end
end

for i=1:34
  conc(i)=c(i)*css(i);
end

feed(1) = 0.0D0;
% Feed_1
if( (t > 5.0D0) && (t < 10.0D0) )
        feed(1) = fp(1);
end

% EXCHANGE_glc
      r(1)=0.0D0;
% EXCHANGE_lac
      r(2)=0.0D0;
% EXCHANGE_leu
      r(3)=0.0D0;
% EXCHANGE_met
      r(4)=0.0D0;
% EXCHANGE_product
      r(5)=0.0D0;
% Glud1
      r(6)=(cap(6)*(rss(6)*(1.0D0+(((e(14)*clogk(8))+(e(15)*clogk(9)))+((e(16)*clogk(6))+(e(17)*clogk(7)))))));
% Glul
      r(7)=(cap(7)*(rss(7)*(1.0D0+(((e(18)*clogk(12))+(e(19)*clogk(13)))+((e(20)*clogk(10))+(e(21)*clogk(11)))))));
% Got2
      r(8)=(cap(8)*(rss(8)*(1.0D0+((((e(22)*clogk(15))+(e(23)*clogk(6)))+((e(24)*clogk(8))+(e(25)*clogk(14))))+(e(26)*clogk(16))))));
% Mdh2
      r(9)=(cap(9)*(rss(9)*(1.0D0+(((e(27)*clogk(16))+(e(28)*clogk(7)))+((e(29)*clogk(15))+(e(30)*clogk(9)))))));
% ND1_a
      r(10)=(cap(10)*(rss(10)*(1.0D0+((((e(31)*clogk(9))+(e(32)*clogk(19)))+(e(33)*clogk(20)))+(((e(34)*clogk(7))+(e(35)*clogk(17)))+(e(36)*clogk(18)))))));
% Pklr
      r(11)=(cap(11)*(rss(11)*(1.0D0+((((e(37)*clogk(22))+(e(38)*clogk(11)))+((e(39)*clogk(21))+(e(40)*clogk(13))))+(e(41)*clogk(13))))));
% Subset0
      r(12)=(cap(12)*(rss(12)*(1.0D0+(((((((e(42)*clogk(15))+(e(43)*clogk(7)))+(e(44)*clogk(21)))+...
          ((e(45)*clogk(8))+(e(46)*clogk(9))))+(e(47)*clogk(32)))+(e(48)*clogk(9)))+(e(49)*clogk(30))))));
% Subset1
      r(13)=(cap(13)*(rss(13)*(1.0D0+(((((((e(50)*clogk(25))+(e(51)*clogk(26)))+((e(52)*clogk(23))+...
          (e(53)*clogk(24))))+(e(54)*clogk(11)))+(e(55)*clogk(11)))+(e(56)*clogk(13)))+(e(57)*clogk(22))))));
% Subset2
      r(14)=(cap(14)*(rss(14)*(1.0D0+((((((e(58)*clogk(28))+(e(59)*clogk(29)))+(e(60)*clogk(23)))+...
          (((e(61)*clogk(12))+(e(62)*clogk(27)))+(e(63)*clogk(25))))+(e(64)*clogk(27)))+(e(65)*clogk(10))))));
% Subset26
      r(15)=(cap(15)*(rss(15)*(1.0D0+((((e(66)*clogk(32))+(e(67)*clogk(22)))+(e(68)*clogk(16)))+(((e(69)*clogk(15))+(e(70)*clogk(30)))+(e(71)*clogk(27)))))));
% Subset3
      r(16)=(cap(16)*(rss(16)*(1.0D0+(((e(72)*clogk(21))+(e(73)*clogk(23)))+((e(74)*clogk(2))+(e(75)*clogk(25)))))));
% Subset35
      r(17)=(cap(17)*(rss(17)*(1.0D0+((e(76)*clogk(24))+(e(77)*clogk(22))))));
% Subset37
      r(18)=(cap(18)*(rss(18)*(1.0D0+(((e(78)*clogk(20))+(e(79)*clogk(17)))+((e(80)*clogk(18))+(e(81)*clogk(19)))))));
% Subset4
      r(19)=(cap(19)*(rss(19)/(((((((((css(24)/e(1))*(css(25)/e(2)))*(css(12)/e(3)))*(css(33)/e(4)))*...
          (css(34)/e(5)))*(css(29)/e(6)))*(css(10)/e(7)))*(css(13)/e(8)))/((((((((1.0D0+(css(24)/e(1)))*...
          (1.0D0+(css(25)/e(2))))*(1.0D0+(css(12)/e(3))))*(1.0D0+(css(33)/e(4))))*(1.0D0+(css(34)/e(5))))*...
          (1.0D0+(css(29)/e(6))))*(1.0D0+(css(10)/e(7))))*(1.0D0+(css(13)/e(8))))))*((((((((((c(24)*...
          css(24))/e(1))*((c(25)*css(25))/e(2)))*((c(12)*css(12))/e(3)))*((c(33)*css(33))/e(4)))*((c(34)*...
          css(34))/e(5)))*((c(29)*css(29))/e(6)))*((c(10)*css(10))/e(7)))*((c(13)*css(13))/e(8)))/((((((((1.0D0+((c(24)*css(24))/e(1)))*...
          (1.0D0+((c(25)*css(25))/e(2))))*(1.0D0+((c(12)*css(12))/e(3))))*(1.0D0+((c(33)*css(33))/e(4))))*...
          (1.0D0+((c(34)*css(34))/e(5))))*(1.0D0+((c(29)*css(29))/e(6))))*(1.0D0+((c(10)*css(10))/e(7))))*(1.0D0+((c(13)*css(13))/e(8))))));
% Subset5
      r(20)=(cap(20)*(rss(20)*(1.0D0+(((((((((e(82)*clogk(8))+(e(83)*clogk(7)))+(e(84)*clogk(19)))+(e(85)*clogk(31)))+...
          (e(86)*clogk(32)))+((((e(87)*clogk(16))+(e(88)*clogk(9)))+(e(89)*clogk(17)))+(e(90)*clogk(30))))+(e(91)*clogk(31)))+(e(92)*clogk(9)))+(e(93)*clogk(15))))));
% Ucp
      r(21)=(cap(21)*(rss(21)*(1.0D0+((e(94)*clogk(18))+(e(95)*clogk(20))))));
% adencarr
      r(22)=(cap(22)*(rss(22)*(1.0D0+(((e(96)*clogk(11))+(e(97)*clogk(30)))+((e(98)*clogk(32))+(e(99)*clogk(13)))))));
% akgcarr
      r(23)=(cap(23)*(rss(23)*(1.0D0+(((e(100)*clogk(8))+(e(101)*clogk(27)))+((e(102)*clogk(28))+(e(103)*clogk(16)))))));
% aspglucarr
      r(24)=(cap(24)*(rss(24)*(1.0D0+(((e(104)*clogk(14))+(e(105)*clogk(12)))+((e(106)*clogk(29))+(e(107)*clogk(6)))))));
% atpase
      r(25)=(cap(25)*(rss(25)*(1.0D0+((e(108)*clogk(13))+(e(109)*clogk(11))))));
% atpase1
      r(26)=(cap(26)*(rss(26)*(1.0D0+((((e(110)*clogk(32))+(e(111)*clogk(31)))+(e(112)*clogk(18)))+((e(113)*clogk(30))+(e(114)*clogk(20)))))));
% dicarr
      r(27)=(cap(27)*(rss(27)*(1.0D0+(((e(115)*clogk(27))+(e(116)*clogk(31)))+(e(117)*clogk(16))))));
% feed_glc
      r(28)=(cap(28)*(rss(28)*(1.0D0+((e(118)*clogk(1))+(e(119)*clogk(26))))));
% feed_leu
      r(29)=(cap(29)*(rss(29)*(1.0D0+((e(120)*clogk(3))+(e(121)*clogk(33))))));
% feed_met
      r(30)=(cap(30)*(rss(30)*(1.0D0+((e(122)*clogk(4))+(e(123)*clogk(34))))));
% glucarr
      r(31)=(cap(31)*(rss(31)*(1.0D0+((e(124)*clogk(6))+(e(125)*clogk(12))))));
% mitphocarr
      r(32)=(cap(32)*(rss(32)*(1.0D0+((e(126)*clogk(18))+((e(127)*clogk(31))+(e(128)*clogk(20)))))));

    
%% OUTPUTS    

ydot = zeros(35,1);
	
% fermenter volume
      ydot(35)=feed(1);
% beta-D-Glucose_f
      ydot(1)=(r(1)-r(28)*1.0D0/rho-c(1)*css(1)/c(35)*ydot(35))/css(1);
% L-Lactate_f
      ydot(2)=(-r(2)+r(16)*1.0D0/rho-c(2)*css(2)/c(35)*ydot(35))/css(2);
% L-Leucine_f
      ydot(3)=(r(3)-r(29)*1.0D0/rho-c(3)*css(3)/c(35)*ydot(35))/css(3);
% L-Methionine_f
      ydot(4)=(r(4)-r(30)*1.0D0/rho-c(4)*css(4)/c(35)*ydot(35))/css(4);
% Productprotein_f
      ydot(5)=(-r(5)+r(19)*1.0D0/rho-c(5)*css(5)/c(35)*ydot(35))/css(5);
% L-Glutamate_m
      ydot(6)=(r(6)-r(8)+r(24)*vol_1/vol_2-r(31)*vol_1/vol_2)/css(6);
% NAD_m
      ydot(7)=(r(6)-r(9)+r(10)-2.0D0*r(12)*vol_1/vol_2-r(20))/css(7);
% 2-Oxoglutarate_m
      ydot(8)=(-r(6)+r(8)+r(12)*vol_1/vol_2-r(20)-r(23)*vol_1/vol_2)/css(8);
% NADH_m
      ydot(9)=(-r(6)+r(9)-r(10)+2.0D0*r(12)*vol_1/vol_2+r(20))/css(9);
% L-Glutamine_c
      ydot(10)=(r(7)-120.0D0*r(19))/css(10);
% ADP_c
      ydot(11)=(r(7)-r(11)+1260.0D0*r(19)-r(22)+r(25))/css(11);
% L-Glutamate_c
      ydot(12)=(-r(7)+r(14)-240.0D0*r(19)-r(24)+r(31))/css(12);
% ATP_c
      ydot(13)=(-r(7)+r(11)-1260.0D0*r(19)+r(22)-r(25))/css(13);
% L-Aspartate_m
      ydot(14)=(r(8)-r(24)*vol_1/vol_2)/css(14);
% Oxaloacetate_m
      ydot(15)=(-r(8)+r(9)-r(12)*vol_1/vol_2+r(15)*vol_1/vol_2)/css(15);
% L-Malate_m
      ydot(16)=(-r(9)-r(15)*vol_1/vol_2+r(20)+r(23)*vol_1/vol_2+r(27)*vol_1/vol_2)/css(16);
% CoQH_radical_m
      ydot(17)=(2.0D0*r(10)-2.0D0*r(18)+2.0D0*r(20))/css(17);
% H_out_m
      ydot(18)=(4.0D0*r(10)+6.0D0*r(18)-r(21)-3.0D0*r(26)-r(32)*vol_1/vol_2)/css(18);
% CoQ_m
      ydot(19)=(-2.0D0*r(10)+2.0D0*r(18)-2.0D0*r(20))/css(19);
% H_in_m
      ydot(20)=(-4.0D0*r(10)-6.0D0*r(18)+r(21)+3.0D0*r(26)+r(32)*vol_1/vol_2)/css(20);
% Pyruvate_c
      ydot(21)=(r(11)-r(12)-r(16))/css(21);
% Phosphoenolpyruvate_c
      ydot(22)=(-r(11)-r(15)+r(17))/css(22);
% NADH_c
      ydot(23)=(r(13)-r(14)-r(16)+120.0D0*r(19))/css(23);
% D-Glycerate_3-phosphate_c
      ydot(24)=(r(13)-r(17)-120.0D0*r(19))/css(24);
% NAD_c
      ydot(25)=(-r(13)+r(14)+r(16)-120.0D0*r(19))/css(25);
% beta-D-Glucose_c
      ydot(26)=(-0.5D0*r(13)+r(28))/css(26);
% L-Malate_c
      ydot(27)=(r(14)+r(15)-r(23)-r(27))/css(27);
% 2-Oxoglutarate_c
      ydot(28)=(-r(14)+120.0D0*r(19)+r(23))/css(28);
% L-Aspartate_c
      ydot(29)=(-r(14)-120.0D0*r(19)+r(24))/css(29);
% ATP_m
      ydot(30)=(r(15)*vol_1/vol_2+r(20)-r(22)*vol_1/vol_2+r(26))/css(30);
% Orthophosphate_m
      ydot(31)=(-r(20)-r(26)-r(27)*vol_1/vol_2+r(32)*vol_1/vol_2)/css(31);
% ADP_m
      ydot(32)=(-r(15)*vol_1/vol_2-r(20)+r(22)*vol_1/vol_2-r(26))/css(32);
% L-Leucine_c
      ydot(33)=(-120.0D0*r(19)+r(29))/css(33);
% L-Methionine_c
      ydot(34)=(-120.0D0*r(19)+r(30))/css(34);
      
return