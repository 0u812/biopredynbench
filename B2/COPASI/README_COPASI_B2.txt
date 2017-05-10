

This is the README file for the COPASI implementation of benchmark B2 in the BioPreDyn-Bench collection.

http://www.iim.csic.es/~gingproc/biopredynbench/

Created:	17/06/2014
Last modified:	17/06/2014
COntact:	gingproc@iim.csic.es

COPASI [1] is a software application for simulation and analysis of biochemical networks and their dynamics. COPASI is a stand-alone program that supports models in the SBML standard. The COPASI implementations, like the SBML ones, provide information about the model dynamics,
but not about the parameter estimation problem itself. This information can be easily defined by the user in the COPASI interface.

SOFTWARE REQUIREMENTS: 
All of the problems in the BioPreDyn-Bench collection implemented in COPASI can be run in Linux, Windows, and MAC OS.
COPASI can be downloaded freely for non-commercial use from http://www.copasi.org/.

HOW TO PROCEED:
The model provided as COPASI input file (b2.cps) can be loaded by the COPASI toolbox, which implements a number of parameter estimation techniques. 
To do this, proceed as follows:
Go to http://www.copasi.org/ and download the version that suits your operating system.
To install follow the instructions in http://www.copasi.org/tiki-index.php?page_ref_id=114
After COPASI is installed, simply double-click in the file you want to use (b2.cps); this will launch COPASI and load the model.
To perform parameter estimation, go to the left column in the COPASI screen and select: Tasks > Parameter Estimation. You can customize the parameter estimation procedure, choosing the optimization method and a number of settings. If you don't want to do that, simply click the "Run" button at the bottom of the screen.

CONTENTS:
b2.cps			The COPASI implementation of B2
README_COPASI_B2.txt	This file
chass_exp_1.csv		Experimental data
chass_exp_2.csv		Experimental data
chass_exp_3.csv		Experimental data
chass_exp_4.csv		Experimental data
chass_exp_5.csv		Experimental data
chass_param.csv		Parameter values


[1] Hoops S, Sahle S, Gauges R, Lee C, Pahle J, et al. (2006) Copasi – a complex pathway simulator. Bioinformatics 22: 3067–3074.