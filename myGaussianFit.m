function [fitresult, gof] = myGaussianFit(xdata, ydata, xStart)
%CREATEFIT(XDATA,YDATA)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : xdata
%      Y Output: ydata
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 07-Jan-2019 10:29:19


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( xdata, ydata );

% Set up fittype and options.
ft = fittype( 'a*exp(-((x-b)/c)^2) + d', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [15 xStart 10 -70];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'Gaussian' );
h = plot( fitresult, xData, yData );
legend( h, 'ydata vs. xdata', 'Gaussian', 'Location', 'NorthEast' );
% Label axes
xlabel xdata
ylabel ydata
grid on


