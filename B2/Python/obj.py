import tellurium as te
from roadrunner import RoadRunner

from data import *

class MissingValue(Exception):
    pass

def valueAtTime(a,t):
    ''' Find a value in a matching the measurement time t. '''
    try:
        return float(a[np.argwhere(a[:,0] == t)[0],1])
    except IndexError:
        raise MissingValue
    except TypeError:
        print(np.argwhere(a[:,0] == t))
        raise MissingValue

class B4Model:
    ''' Class that performs a timecourse simulation
    and calculates the residuals for b4.'''

    def __init__(self):
        self.r = RoadRunner('../SBML/b2.xml')
        self.residuals = []
        print(self.r.getFloatingSpeciesIds())

        self.timepoints = np.unique(np.hstack(a[:,0] for a in data_quantities))
        self.reset()

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
        self.measurement_count = dict((quantity,0) for quantity in self.measurement_map)

    def calcResiduals(self,t):
        ''' Try to calculate residuals at the current time t
        and add them to self.residuals.
        If they do not exist for certain datasets at time t,
        just pass over the dataset.'''
        self.usage_map = dict((q,False) for q in self.measurement_map)
        self.tryAddResidual(t, self.r.cpep, 'PEP')
        self.tryAddResidual(t, self.r.cg6p, 'G6P')
        self.tryAddResidual(t, self.r.cpyr, 'PYR')
        self.tryAddResidual(t, self.r.cf6p, 'F6P')
        self.tryAddResidual(t, self.r.cglcex, 'GLCex')
        self.tryAddResidual(t, self.r.cg1p, 'G1P')
        self.tryAddResidual(t, self.r.cpg, '6PG')
        self.tryAddResidual(t, self.r.cfdp, 'FDP')
        print('{}: PEP {} G6P {} PYR {} F6P {} GLCex {} G1P {} 6PG {} FDP {}'.format(t,
            self.usage_map['PEP'], self.usage_map['G6P'], self.usage_map['PYR'], self.usage_map['F6P'],
            self.usage_map['GLCex'], self.usage_map['G1P'], self.usage_map['6PG'], self.usage_map['FDP']))

    def tryAddResidual(self,t,predicted_value,identifier):
        ''' Append a residual to the list of residuals.
            Call with a single value from a simulation and pass
            array of measurements for that quantity.
            If there is no measurement at this time point (t), do nothing.'''
        a = self.measurement_map[identifier]
        try:
            # if there is a measurement a this timepoint, append to list
            self.residuals.append(predicted_value - valueAtTime(a,t))
            # increment the residual use count (check all measurements are used exactly once)
            self.measurement_count[identifier] += 1
            self.usage_map[identifier] = True
        except MissingValue:
            # no measurement at this timepoint, do nothing
            return

    def MSE(self):
        ''' Calc the MSE for all residuals.
        Call this after calculating all residuals.'''
        r = numpy.array(self.residuals)
        return (r**2).mean()

    def simulateToNextTime(self):
        t_begin = self.t
        t_end = self.timepoints[self.next_ti]
        delta = t_end-t_begin
        stepsize = 0.05
        steps = int(max(100,delta/stepsize))
        self.r.simulate(0,delta,steps)
        return t_end

    def reset(self):
        self.r.resetAll()
        self.t = self.timepoints[0]
        # next time index
        self.next_ti = 0

    def calcObjective(self):
        while self.next_ti < self.timepoints.shape[0]:
            self.t = self.simulateToNextTime()
            self.calcResiduals(self.t)
            self.next_ti += 1

    def printDatapointUsage(self):
        ''' For debugging. Make sure every data point is
        used.'''
        total = 0
        total_used = 0
        for q in self.measurement_count:
            a = self.measurement_map[q]
            used = self.measurement_count[q]
            n = a.shape[0]
            print('Usage for {}: {}/{}'.format(q,used,n))
            total+=n
            total_used+=used
        print('*** Total usage: {}/{} ({:.1f}%)'.format(total_used,total,100.*total_used/total))

b4 = B4Model()
print(b4.timepoints)
print(b4.timepoints.shape[0])
b4.calcObjective()
b4.printDatapointUsage()