model lab06_02
parameter Real alpha=0.01;
parameter Real betha=0.02;
parameter Real R0 = 6;
parameter Real I0 = 83;
parameter Real N=6666;
Real R(start=R0);
Real I(start=I0);
Real S(start=N-I0-R0);
equation
der(S) = -alpha*S;
der(I) = alpha*S-betha*I;
der(R) = betha*I;

end lab06_02;
