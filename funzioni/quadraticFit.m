function [fitresult, gof] = quadraticFit(myX, myY)
%CREATEFIT(MYX,MYY)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : myX
%      Y Output: myY
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 07-Feb-2019 23:17:23


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( myX, myY );

% Set up fittype and options.
ft = fittype( 'poly2' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData, "o" );
% legend( h, 'data', 'quadratic fit', 'Location', 'NorthEast' );
% % Label axes
% xlabel 'lag'
% ylabel 'crosscorrelation'
% grid on


