function [yteor,error_flag] = b3_dynamics(t0,tf,ts,y_0,par,u,pend,tu,iexp)

% integration settings:
rtol = 1e-6;
atol = 1e-6;
max_step_size = Inf;
max_num_steps = 100000;
max_error_test_fails = 50;
iexp = 6;                

[error_flag yteor]=...
    kotte_sim(...
    par,...                 total parameters
    iexp,...                simulation number  
    rtol,...                relative tolerance for cvodes
    atol,...                absolute tolerance for cvodes
    max_step_size,...       maximum step size for cvodes
    max_num_steps,...       maximum number of tests for cvodes
    max_error_test_fails... maximum error test fails for cvodes
);

% if the number of simulated points is not the expected, there has been an
% integration error -> return a vector of the correct size with large
% values to give a bad fit:
if size(yteor,1) ~= 161         
    yteor = 1e50*ones(161,47);
end

end

function [error_flag yteor] = kotte_sim(...
    p,...                   parameters
    scenario,...            simulation number
    rtol,...                relative tolerance for cvodes
    atol,...                absolute tolerance for cvodes
    max_step_size,...       maximum step size for cvodes
    max_num_steps,...       maximum number of tests for cvodes
    max_error_test_fails... maximum error test fails for cvodes
    )

sensitivity        = 0;
jacobian           = false;
ivpmex             = 'b3_mex';
[pnom,ssGLC,ssACT] = b3_initial;    
        
%SCENARIO 6
        %1ST Simulation
        t0 = 0;
        tf = 8.15 * 3600; %6.7
        y_0 = ssGLC;
        y_0(2) = 0;
        y_0(3) = 4.8;
        y_0(1) = 0.03;
        
        n_par=length(p);
        t_initial=t0;
        t_final=tf;
        
        t1=t_initial:1000:t_final;
        n_times=length(t1);
        n_states=length(y_0);
        n_stimulus=1;
        n_t_control=2;
        t_con=[t_initial t_final];
        u=6;
        slope=0;
        
        [yteor1 error_flag]=feval(ivpmex,...
            n_par,...Number of parameters
            sensitivity,...activate sensitivity
            p,...parameters
            ones(1,n_par),...isoptpar
            t_initial,...t initial
            t_final,...t final
            n_times,...n_times
            t1,...t
            n_states,...n_states
            y_0,...Intiial values for state variables
            n_stimulus,...
            n_t_control,...Number of controls changes(handle discontinuities)
            t_con,...Times of such discontinuities
            u,... Values of stimuli
            slope,... Slope of the line
            rtol,...reltol
            atol,...atol
            max_step_size,...max_step_size
            max_num_steps,...max_num_steps
            max_error_test_fails,...%max_error_test_fails
            sensitivity,...Sensitivity analysis=false
            jacobian);%use of the jacobian
        
        if(~error_flag)
            yteor=[];
            return;
        end
        
        
        %2ND Simulation
        new_ic = yteor1(end,:);
        new_ic(2) = 5;
        new_ic(3) = 0;
        new_ic(1) = 0.03; % 0.02, 21.6
        y_0=new_ic;
        new_tf = (t1(end)/3600 + 19.7) * 3600;
        t0 = t1(end);
        tf = new_tf;
        
        n_par=length(p);
        t_initial=t0;
        t_final=tf;
        t2=t_initial:1000:t_final;
        n_times=length(t2);
        n_states=length(y_0);
        n_stimulus=1;
        n_t_control=2;
        t_con=[t_initial t_final];
        u=6;
        slope=0;
        
        [yteor2 error_flag]=feval(ivpmex,...
            n_par,...Number of parameters
            sensitivity,...activate sensitivity
            p,...parameters
            ones(1,n_par),...isoptpar
            t_initial,...t initial
            t_final,...t final
            n_times,...n_times
            t2,...t
            n_states,...n_states
            y_0,...Intiial values for state variables
            n_stimulus,...
            n_t_control,...Number of controls changes(handle discontinuities)
            t_con,...Times of such discontinuities
            u,... Values of stimuli
            slope,... Slope of the line
            rtol,...reltol
            atol,...atol
            max_step_size,...max_step_size
            max_num_steps,...max_num_steps
            max_error_test_fails,...%max_error_test_fails
            sensitivity,...Sensitivity analysis=false
            jacobian);%use of the jacobian
        
        
        if(~error_flag)
            yteor=[];
            return;
        end
        
        
        %3THRD SIM
        new_ic = yteor2(end,:);
        new_ic(2) = 3;
        new_ic(3) = 3;
        new_ic(1) = 5E-4;
        y_0=new_ic;
        new_tf = (t2(end)/3600 + 16.45) * 3600; % 3 3 5E-4 16.45 ok
        t0 = t2(end);
        tf = new_tf;
        
        n_par=length(p);
        t_initial=t0;
        t_final=tf;
        t3=t_initial:1000:t_final;
        n_times=length(t3);
        n_states=length(y_0);
        n_stimulus=1;
        n_t_control=2;
        t_con=[t_initial t_final];
        u=6;
        slope=0;
        
        sensitivity=0;
        jacobian=false;
        
        [yteor3 error_flag]=feval(ivpmex,...
            n_par,...Number of parameters
            sensitivity,...activate sensitivity
            p,...parameters
            ones(1,n_par),...isoptpar
            t_initial,...t initial
            t_final,...t final
            n_times,...n_times
            t3,...t
            n_states,...n_states
            y_0,...Intiial values for state variables
            n_stimulus,...
            n_t_control,...Number of controls changes(handle discontinuities)
            t_con,...Times of such discontinuities
            u,... Values of stimuli
            slope,... Slope of the line
            rtol,...reltol
            atol,...atol
            max_step_size,...max_step_size
            max_num_steps,...max_num_steps
            max_error_test_fails,...%max_error_test_fails
            sensitivity,...Sensitivity analysis=false
            jacobian);%use of the jacobian
        
        
        if(~error_flag)
            yteor=[];
            return;
        end
        
        yteor=[yteor1; yteor2; yteor3];
        
end
