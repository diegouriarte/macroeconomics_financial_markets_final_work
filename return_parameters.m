function [mu, delta, phi] = return_parameters( m1, m2, m3, eta)
%return_parameters: 
%INPUT: eta, and the three sample moments, 
%OUTPUT: mu, delta and phi

mu = m1*2*(1+eta)/(eta+2)-1;

delta_square = (m2 * 4*(1+eta) - (4+eta)*(mu+1)^2)/4;
delta = sqrt(delta_square);

phi = (m3*(1+eta) - (1+mu)^2 + (1-eta)*delta^2)/(2*delta^2);

end

