clc()
clear
pi=3.14;
N=20; //Isotropic antenna elements
SLL=-20; //Desired side lobe level
b=1/(10^(SLL/20))
order=N-1 //Order of Tchebyscheff polynomial
xo=cosh(acosh(b)/order)
k=linspace(0,0,order)
dk=linspace(0,0,order)
xk=linspace(0,0,order)
sk=linspace(0,0,order)
for ii=1:order
k(ii)=ii;
dk(ii)=(2*ii-1)*pi/(2*order);
xk(ii)=cos(dk(ii));
sk(ii)=2*acos(xk(ii)/xo);
end

f=5*1e9;
lo=3e8/f;
beta=2*pi/lo;
d=0.5*lo

// Calculate the array factor
ang=linspace(0,pi,361);
AF=linspace(0,0,361);
AF2=linspace(0,0,361);
for ii=1:361
ag=ang(ii);
AF(ii)=1;
si=beta*d*cos(ag);
for jj=1:order
AF(ii)=AF(ii)*(exp(si*%i)-exp(sk(jj)*%i));
end
AF2(ii)=abs(AF(ii))
end
AF2(1:361)=AF2(1:361)/max(AF2);
plot(ang*180/pi,20*log10(AF2))
xgrid
h=gca()
h.data_bounds=[0,-30;180,0]
h.tight_limits=["on","on"]
xlabel('Elevation angle (degrees)')
ylabel('Array Factor (dB)')


//Calculate the HPBW
HPBW=0;
for ii=182:361
if AF2(ii)&gt;0.707
HPBW=2*(ang(ii)-pi/2)*180/pi;
end
end
