from __future__ import division, print_function, absolute_import

import tellurium as te, numpy as np, os, csv

# dir of script
this_dir = os.path.dirname(__file__)

with open(os.path.join(this_dir, 'b4.sb')) as f:
    model_str = f.read()

# load the model into tellurium
r = te.loada(model_str)

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