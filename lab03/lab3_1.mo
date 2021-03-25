model lab3_1
parameter Real a = 0.22 "Степень влияния различных факторов на потери страны X";
parameter Real b = 0.77 "Эффективность боевых действий со стороны страны X";
parameter Real c = 0.66 "Эффективность боевых действий со стороны страны Y";
parameter Real h = 0.11 "Степень влияния различных факторов на потери страны Y";
parameter Real x0 = 22222 "Численность армии страны X";
parameter Real y0 = 11111 "Численность армии страны X";

Real x(start=x0);
Real y(start=y0);
equation

der(x) = -a*x-b*y+Modelica.Math.sin(0.5*time) + 2 "Численность армии страны X с учетом регулярных войск";
der(y) = -c*x-h*y+Modelica.Math.cos(0.5*time) + 2 "Численность армии страны Y с учетом регулярных войск";
end lab3_1;
