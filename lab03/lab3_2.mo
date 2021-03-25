model lab3_2
parameter Real a = 0.31 "Степень влияния различных факторов на потери страны X";
parameter Real b = 0.79 "Эффективность боевых действий со стороны страны X";
parameter Real c = 0.59 "Эффективность боевых действий со стороны страны Y";
parameter Real h = 0.21 "Степень влияния различных факторов на потери страны Y";
parameter Real x0 = 22222 "Численность армии страны X";
parameter Real y0 = 11111 "Численность армии страны Y";

Real x(start=x0);
Real y(start=y0);
equation

der(x) = -a*x-b*y+Modelica.Math.sin(2.5*time) + 1 "Численность армии страны X с учетом регулярных войск";
der(y) = -c*x*y-h*y+Modelica.Math.cos(2*time) + 2 "Численность армии страны Y с учетом партизанских отрядов";
end lab3_2;
