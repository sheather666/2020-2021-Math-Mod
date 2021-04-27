model lab05_01
parameter Real a = -0.32;
parameter Real b = -0.04;
parameter Real c = -0.42;
parameter Real d = -0.02;
parameter Real x0 = 9;
parameter Real y0 = 20;
Real x(start=x0);
Real y(start=y0);
Real x1;
Real y1;
equation
der(x) = a*x-b*x*y;
der(y) = -c*y+d*x*y;
x1=c/d;
y1=a/b;
end lab05_01;
