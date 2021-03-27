model lab7_3
parameter Real a1 = 0.1 "Интенсивность рекламной кампании";
parameter Real a2 = 0.4 "Интенсивность распространения информации среди клиентов";
parameter Real N = 3030 "Число потенциальных клиентов";
parameter Real n0 = 24 "Число клиентов в данный момент";

Real n(start=n0);
equation
der(n) = (a1*(time)+a2*Modelica.Math.cos(time)*n) * (N-n);
end lab7_3;
