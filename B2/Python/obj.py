import numpy as np

def reshape(a):
    n = int(a.shape[0]/2)
    return np.reshape(a, (n,2))

PEP = reshape(np.fromstring('''
  0.15 1.99
  0.3  2.10
  0.45 2.09
  0.6  1.84
  0.8  2.31
  5.5  2.76
 12    3.05
 21.5  2.42
 31.5  2.23
 61    2.52
 90    2.81
120.5  2.71
180.5  2.71
''', dtype=np.dtype('d'), sep=' '))
print(PEP)