model lab7_2
parameter Real a1 = 0.000018 "Интенсивность рекламной кампании";
parameter Real a2 = 0.377 "Интенсивность распространения информации среди клиентов";
parameter Real N = 3030 "Число потенциальных клиентов";
parameter Real n0 = 24 "Число клиентов в данный момент";

Real n(start=n0);
equation
der(n) = (a1+a2*n) * (N-n);
end lab7_2;
