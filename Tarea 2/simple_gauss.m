close all

t  = linspace(-15,15);
c  = 10; % Modifica la varianza entre 0 y 10 para cambiar la amplitud de la campana
b  = 0;
c2 = c^2;
a  = (1/(c*sqrt(2*pi)));
z  = a*exp(-(t.^2)/(2*c2));
plot(t,z)