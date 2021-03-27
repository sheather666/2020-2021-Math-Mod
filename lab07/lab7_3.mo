model lab7_3
parameter Real a1 = 0.1;
parameter Real a2 = 0.4;
parameter Real N = 3030;
parameter Real n0 = 24;

Real n(start=n0);
equation
der(n) = (a1*(time)+a2*Modelica.Math.cos(time)*n) * (N-n);
end lab7_3;
