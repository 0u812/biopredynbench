import tellurium as te
from roadrunner import RoadRunner

from data import *

def valueAtTime(a,t):
    return a[np.argwhere(a[:,0] == t),1]

class B4Model:
    def __init__(self):
        self.r = RoadRunner('../SBML/b2.xml')
        #print(dir(self.r))
        print(self.r.getFloatingSpeciesIds())

    def calcResiduals(self,t):
        r = np.array((
          self.r.cpep - valueAtTime(PEP,t),
        ))

b4 = B4Model()
print(valueAtTime(PEP,0.15))