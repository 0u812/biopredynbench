
function [objective,constraints,residuals] = b3_obj(parameters)

if numel(parameters)==178
    % this converts the 178-par vector to a 193-par vector, including known and unknown parameters:
    p178 = parameters;
    [pnom,ssGLC,ssACT] = b3_initial;
    p193 = [p178(1:4),     pnom(5), ...
            p178(5:15),    pnom(17), ...
            p178(16:26),   pnom(29), ...
            p178(27:46),   pnom(50), ...
            p178(47:55),   pnom(60), ...
            p178(56:62),   pnom(68), ...
            p178(63:70),   pnom(77), ...
            p178(71:75),   pnom(83), ...
            p178(76:79),   pnom(88), ...
            p178(80:83),   pnom(93), ...
            p178(84:87),   pnom(98), ...
            p178(88:107),  pnom(119:120), ...
            p178(108:162), pnom(176:177), ...
            p178(163:178)
            ];
    parameters = p193';
end

ms = b3_dyn(parameters);

load b3_data; 
exp_data = xnom;

g = [];
resM = ms-exp_data;
expDataMax = max(exp_data);

n_s   = 161; % number of samples
n_obs = 47;  % number of observables
nprocessedData = 0;
nexpdata = n_s*n_obs;

Q = repmat(1./expDataMax, n_s, 1);
atol = 1e-7; % absolute tolerance of the integrator
tmp1 = or(isnan(Q),Q > 1/atol);
Q(tmp1) = 1;
scaledResM = resM.*Q;
g(nprocessedData+1 : nprocessedData + nexpdata) = scaledResM(:);
f=g*g';

residuals = g';
constraints = 0;
objective = f;

end 
