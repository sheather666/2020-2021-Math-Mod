model lab04_02
Real x, y;

initial equation
x=0.2;
y=-0.3;
equation
der(x)=y;
der(y)=-22*y-23*x;
end lab04_02;
