clear;
clc;
A=[-1/9.87 1.43/9.87;0 -1/9.89];
B=[0 0.1]';
C=[1 0];
D=[0];
M=ctrb(A,B);    %判别能控性
m=rank(M);       %m=2
N=obsv(A,C);
n=rank(N);      %n=2   %判别能观性

[V,d]=eig(A);        %特征值1=-0.1013，特征值2=-0.1011 
%   平衡状态渐近稳定的充要条件是矩阵A的所有特征值均具有负实部

% %状态反馈控制器
P=[-0.35+1i*0.367,-0.35-1i*0.367];
K=place(A,B,P)

A = A-B*K;

% [num,den]=ss2tf(A,B,C,D)
% sysm=tf(num,den);
% step(sysm,20);
% % hold on;
% num=num*(1/0.0562);%设计扩大增益
% sysm=tf(num,den);
% figure;
% step(sysm,20);