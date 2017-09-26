from __future__ import division, absolute_import

import tellurium as te, numpy as np, os, csv
from paramest import ParameterEstimation

with open('b4.sb') as f:
    model_str = f.read()

f.close()


antimony_model = te.loada(model_str).getAntimony()

from scipy.optimize import differential_evolution as diff_evol


stochastic_simulation_model = te.StochasticSimulationModel(model=antimony_model,
                seed=1234, # not used
                variable_step_size = False,
                from_time=0,
                to_time=300,
                step_points=12)
stochastic_simulation_model.integrator = "gillespie"

path = "/home/drstrange/devel/src/shaik-biopredynbench/biopredynbench/B4/python"
FILES = ["data.csv"]

bounds = {"r.c_05":(0.0,1.0)}
parameter_est = ParameterEstimation(stochastic_simulation_model,bounds)
for FILENAME in FILES:
    parameter_est.setDataFromFile(os.path.join(path,FILENAME))
    print "Testing with File :"+FILENAME
    parameter_est.run(diff_evol)

print('finished')
