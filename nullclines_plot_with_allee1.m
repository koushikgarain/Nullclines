
clear all;

format long;

set(0, 'DefaultAxesFontSize', 14);
% for turning of predator isocline
B=0.15;
Q=0.2;
S=0.75;
L=0.1;
R(1)=1.9;
R(2)=1.685718195; % saddle node bifurcation(only one)
R(3)=1.4;
A=0.17;



for j=1:2001
    x(j)=(j-1)*0.002;
    y(j)=-((A+x(j))*(1-x(j))*(x(j)-L))/(B*(1-x(j))*(x(j)-L)-S);
end
for j=1:2001
    x1(j)=(j-1)*0.002;
    y1(j)=-(B*Q+A*R(1)+R(1)*x1(j)-sqrt((B*Q+A*R(1)+R(1)*x1(j))^2+4*R(1)*B*(S*x1(j)-Q*x1(j)-A*Q)))/(2*R(1)*B);
    y2(j)=-(B*Q+A*R(2)+R(2)*x1(j)-sqrt((B*Q+A*R(2)+R(2)*x1(j))^2+4*R(2)*B*(S*x1(j)-Q*x1(j)-A*Q)))/(2*R(2)*B);
    y3(j)=-(B*Q+A*R(3)+R(3)*x1(j)-sqrt((B*Q+A*R(3)+R(3)*x1(j))^2+4*R(3)*B*(S*x1(j)-Q*x1(j)-A*Q)))/(2*R(3)*B);
end
%subplot(2,1,1)
plot(x,y,x1,y1,x1,y2,x1,y3, 'LineWidth',2);
axis([0 1.2 0 0.4]);
xlabel('u \rightarrow');
ylabel('v \rightarrow');
hold on;