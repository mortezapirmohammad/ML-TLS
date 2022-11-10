clc;clear; close all;
load('x0');
options = optimset('PlotFcns',@optimplotfval);
[x,fval,exitflag,output] = fminsearch(@mobjectivefcn,x,options);
theta_real = [-1.5 0.7 2 -1 0.5];
bar([x;theta_real]');
legend('Identified \theta','Real \theta');

