model lab7_2
parameter Real a1 = 0.000018;
parameter Real a2 = 0.377;
parameter Real N = 3030;
parameter Real n0 = 24;

Real n(start=n0);
equation
der(n) = (a1+a2*n) * (N-n);
end lab7_2;
