clc()
clear

x1=linspace(-1.5,1.5,1000);
y1=linspace(0,0,1000);
m=1;
for ii=1:1000
if abs(x1(ii))<=1 then
y1(ii)=cos(m*acos(x1(ii)));
else
y1(ii)=cosh(m*acosh(x1(ii)));
end
end
subplot(2,2,1)
plot(x1,y1)
xlabel('values of x1')
ylabel('Tm (x1)')
xgrid

x2=linspace(-1.5,1.5,1000);
y2=linspace(0,0,1000);
m=2;
for ii=1:1000
if abs(x2(ii))<=1 then
y2(ii)=cos(m*acos(x2(ii)));
else
y2(ii)=cosh(m*acosh(x2(ii)));
end
end
subplot(2,2,2)
plot(x2,y2)
xlabel('values of x2')
ylabel('Tm (x2)')
xgrid

x3=linspace(-1.5,1.5,1000);
y3=linspace(0,0,1000);
m=3;
for ii=1:1000
if abs(x3(ii))<=1 then
y3(ii)=cos(m*acos(x3(ii)));
else
y3(ii)=cosh(m*acosh(x3(ii)));
end
end
subplot(2,2,3)
plot(x3,y3)
xlabel('values of x3')
ylabel('Tm (x3)')
xgrid

x4=linspace(-1.5,1.5,1000);
y4=linspace(0,0,1000);
m=4;
for ii=1:1000
if abs(x4(ii))<=1 then
y4(ii)=cos(m*acos(x4(ii)));
else
y4(ii)=cosh(m*acosh(x4(ii)));
end
end
subplot(2,2,4)
plot(x4,y4)
xlabel('values of x4')
ylabel('Tm (x4)')
xgrid

h=gca()
h.data_bounds=[-1.5,-5;+1.5,+5]
h.tight_limits=["on", "on"]
