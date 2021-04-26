model lab02_01
type Distance = Real(unit = "cm");
type Angle = Real (unit = "rad", max=2*pi);
final constant Real pi = 2*Modelica.Math.asin(1.0);
parameter Distance k = 16.4 * 1000 * 100 "Дистанция между лодкой и катером"; 
Real x,y,x1,y1;

Angle tetha;
Angle tetha1;
Distance r01 "Радиус для первого случая";
Distance r02 "Радиус для второго случая";
Real l1, l2, l3, l4;

function PolarToRectangular
input Real radius;
input Real angle;
output Real x;
output Real y;
algorithm
x:=radius*cos(angle);
y:=radius*sin(angle);
end PolarToRectangular;

initial equation
r01 = k / 5.2 "1-случай"; 
r02 = k / 3.2 "2-случай";
equation
der(r01)/der(tetha)=r01/sqrt(16.64) "Уравнение для 1-го случая";
tetha=0+time;
der(r02)/der(tetha1)=r01/sqrt(16.64) "Уравнение для 2-го случая";
(x,y) = PolarToRectangular(r01,tetha1) "Координаты для траектории катера в 1-ом случае";
tetha1=-pi+time;
(x1,y1) = PolarToRectangular(r02,tetha1) "Координаты для траектории катера во 2-ом случае";
(l1, l2) = PolarToRectangular(x, 0) "Координаты для траектории лодки в 1-ом случае";
(l3, l4) = PolarToRectangular(x, 3*pi/4) "Координаты для траектории катера во 2-ом случае";

end lab02_01;
