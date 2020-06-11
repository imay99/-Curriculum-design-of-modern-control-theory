clear;
clc;

A=[-1/9.87 1.43/9.87;0 -1/9.89];
B=[0 0.1]';
C=[1 0];
D=[0];

NT=[0 1;1 0];
T=inv(NT);
AI=NT*A*T
BI=NT*B
CI=C*T

P=[-1];

GI=(place(AI(1,1)',AI(2,1)',P))'
AII=(AI(1,1)-GI*AI(2,1))
BII=((AI(1,1)-GI*AI(2,1))*GI+(AI(1,2)-GI*AI(2,2)))
CII=(BI(1,1)-GI*BI(2,1))