from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np, os, csv

# dir of script
this_dir = os.path.dirname(__file__)

with open(os.path.join(this_dir, 'b4.sb')) as f:
    model_str = f.read()

# load the model into tellurium
r = te.loada(model_str)

# want to compare against these quantities
r.c_05 # "Productprotein"
r.c_04 # "L-Methionine"
r.c_03 # "L-Leucine"
r.c_02 # "L-Lactate"
r.c_01 # "beta-D-Glucose"
r.c_29 # "L-Aspartate"
r.c_27 # "L-Malate"
r.c_21 # "Pyruvate"
r.c_15 # "Oxaloacetate"
r.c_13 # "ATP"
r.c_30 # "ATP"
r.c_32 # "ADP"
r.c_11 # "ADP_c"

# steady state reference values
ss_ref = np.array([
  30,
  1000,
  1000,
  1,
  100000,
  1000,
  1000,
  1000,
  1000,
  3000,
  3000,
  1000,
  1000,
  ])

# load the time series data
rows = []
with open(os.path.join(this_dir, 'data.csv'), 'r') as csvfile:
    reader = csv.reader(csvfile)
    # get header row
    for row in reader:
        headers = row
        break
    for row in reader:
        break # skip labels
    for row in reader:
        break # skip units
    for row in reader:
        np_row = np.array([float(n) for n in row])
        rows.append(np_row)

data = np.vstack(rows)
print('Time-series observables')
print(headers)
print('Time-series data')
print('*'*80)
print(data)

# load errors (std dev) in data
rows = []
with open(os.path.join(this_dir, 'stdev.csv'), 'r') as csvfile:
    reader = csv.reader(csvfile)
    # get header row
    for row in reader:
        headers = row
        break
    for row in reader:
        break # skip labels
    for row in reader:
        break # skip units
    for row in reader:
        np_row = np.array([float(n) for n in row])
        rows.append(np_row)

stdev = np.vstack(rows)
print('Standard deviations')
print('*'*80)
print(stdev)