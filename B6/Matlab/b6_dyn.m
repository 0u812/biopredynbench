function ysim = b6_dyn(par)

setParameters('dm_hkgn53_wls_5_003', par);

t1 = callUnfold('./unfold -t 24.225 dm_hkgn53_wls_5_003'); 
t2 = callUnfold('./unfold -t 30.475 dm_hkgn53_wls_5_003'); 
t3 = callUnfold('./unfold -t 36.725 dm_hkgn53_wls_5_003'); 
t4 = callUnfold('./unfold -t 42.975 dm_hkgn53_wls_5_003'); 
t5 = callUnfold('./unfold -t 49.225 dm_hkgn53_wls_5_003'); 
t6 = callUnfold('./unfold -t 55.475 dm_hkgn53_wls_5_003'); 
t7 = callUnfold('./unfold -t 61.725 dm_hkgn53_wls_5_003'); 
t8 = callUnfold('./unfold -t 67.975 dm_hkgn53_wls_5_003'); 

complete_array = [t1; t2; t3; t4; t5; t6; t7; t8];

data = complete_array(:,3:6);

timepoint1 = reshape(data(1:53,:),1,212);
timepoint2 = reshape(data(54:106,:),1,212);
timepoint3 = reshape(data(107:159,:),1,212);
timepoint4 = reshape(data(160:212,:),1,212);
timepoint5 = reshape(data(213:265,:),1,212);
timepoint6 = reshape(data(266:318,:),1,212);
timepoint7 = reshape(data(319:371,:),1,212);
timepoint8 = reshape(data(372:424,:),1,212);

ysim = [                         
timepoint1;
timepoint2;
timepoint3;
timepoint4;
timepoint5;
timepoint6;
timepoint7;
timepoint8
];

return


