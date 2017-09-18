from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np, os

with open(os.path.join(os.path.dirname(__file__), 'b4.sb') as f:
    model_str = f.read()

# load the model into tellurium
r = te.loada(model_str)

# load the time series data