% https://www.mathworks.com/matlabcentral/answers/180778-plotting-a-3d-gaussian-function-using-surf
% Defines the grid

N = 5;
x=linspace(-N, N);
y=x;
[X,Y]=meshgrid(x,y);
c = 1;
c2 = c^2;
a  = (1/(c*sqrt(2*pi)));
z  = a*exp((-(X.^2/2)-(Y.^2/2))/(2*c2));
% Compute the gaussian function
%z=(1000/sqrt(2*pi).*exp(-(X.^2/2)-(Y.^2/2)));

surf(X,Y,z);
shading interp
axis tight

% Maps the surf values in the range 0 - 255



% Conver to uint8
