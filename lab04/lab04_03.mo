model lab04_03
Real x, y;

initial equation
x=0.2;
y=-0.3;
equation
der(x)=y;
der(y)=-5*y-8*x + 0.25 * Modelica.Math.sin(8 + time);
end lab04_03;
