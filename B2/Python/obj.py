import tellurium as te
from roadrunner import RoadRunner

from data import *

class MissingValue(Exception):
    pass

def valueAtTime(a,t):
    ''' Find a value in a matching the measurement time t. '''
    try:
        return float(a[np.argwhere(a[:,0] == t),1][0])
    except IndexError:
        raise MissingValue

class B4Model:
    ''' Class that performs a timecourse simulation
    and calculates the residuals for b4.'''

    def __init__(self):
        self.r = RoadRunner('../SBML/b2.xml')
        #print(dir(self.r))
        print(self.r.getFloatingSpeciesIds())
        self.residuals = []

        self.timepoints = np.unique(np.hstack(a[:,0] for a in data_quantities))

        self.measurement_map = {
          'PEP': PEP,
          'G6P': G6P,
          'PYR': PYR,
          'F6P': F6P,
          'GLCex': GLCex,
          'G1P': G1P,
          '6PG': x6PG,
          'FDP': FDP,
        }

        # keep track of the number of times a measurement is used
        # (check correct number of residuals)
        self.measurement_count = dict((quantity,0) for quantity in data_quantities)

    def calcResiduals(self,t):
        ''' Try to calculate residuals at the current time t
        and add them to self.residuals.
        If they do not exist for certain datasets at time t,
        just pass over the dataset.'''
        self.tryAddResidual(t, self.r.cpep, 'PEP')
        self.tryAddResidual(t, self.r.cg6p, 'G6P')
        self.tryAddResidual(t, self.r.cpyr, 'PYR')
        self.tryAddResidual(t, self.r.cf6p, 'F6P')
        self.tryAddResidual(t, self.r.cglcex, 'GLCex')
        self.tryAddResidual(t, self.r.cg1p, 'G1P')
        self.tryAddResidual(t, self.r.c6pg, '6PG')
        self.tryAddResidual(t, self.r.cfdp, 'FDP')

    def tryAddResidual(self,t,predicted_value,identifier):
        ''' Append a residual to the list of residuals.
            Call with a single value from a simulation and pass
            array of measurements for that quantity.
            If there is no measurement at this time point (t), do nothing.'''
        a = self.measurement_count[identifier]
        try:
            # if there is a measurement a this timepoint, append to list
            self.residuals.append(predicted_value - valueAtTime(a,t))
            # increment the residual use count (check all measurements are used exactly once)
            self.measurement_count[a] += 1
        except MissingValue:
            # no measurement at this timepoint, do nothing
            return

    def MSE(self):
        ''' Calc the MSE for all residuals.
        Call this after calculating all residuals.'''
        r = numpy.array(self.residuals)
        return (r**2).mean()

b4 = B4Model()
print(valueAtTime(PEP,0.16))