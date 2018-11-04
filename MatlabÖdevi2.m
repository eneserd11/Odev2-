%%
%1.soru a þýkký
clc 
clear all
close all

fs = 100000;
f= 100;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*50*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')

%%
%1.soru b þikký
clc 
clear all
close all


fs = 10000000;
f= 100;
t = 0:1/fs:1.5;
x2 = square(2*pi*50*t);
subplot(2,1,2)
plot(t,x2)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')

%%
%1. soru c þýkký
clc 
clear all
close all

fs = 100000;
f= 20
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')

%%
%1. soru d þýkký
clc 
clear all
close all

fs = 100000;
f= 20;
t = -1:1/fs:1;
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')

%%
% 1.soru e þýkký
clc 
clear all
close all

fs= 100000000;
f= 50000;
tc = gauspuls('cutoff',50e3,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.6);
subplot(2,1,1)
plot(t1*1e3,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')

%%
%1. soru f þýkký
clc 
clear all
close all

fs = 200E9;                    
D = [2.5 10 100]' * 1e-9;     
t = 0 : 1/fs : 2500/fs;       
w = 2e-9;                      
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
subplot(2,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%%
%1. soru g þýkký
clc 
clear all
close all

fs = 50E9;                    
D = [2.5 10 17.5]' * 6e-3;    
t = 0 : 1/fs : 2500/fs;        
w = 10e3;                      
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
plot(T*1e3,Y);
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%%


%%
%3. soru 

clc
clear all
close all
fs=1000 %fs=1 kHz
f=20 %20 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',1)
us2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,us2,'LineWidth',2)
grid on

%3. Soru 
%x1[n] grafiði
clc 
clear all
close all
n=-72:1:72
fs=1000 %fs=1 kHz
f=20 %20 Hz
t=0:1/fs:5
y=cos(2*pi*n/36)
stem(n,y)
title('x1[n]=cos(2*pi*n/36) Grafik çizimi')
%x2[n] grafiði
clc 
clear all
close all
n=-72:1:72
fs=1000 %fs=1 kHz
f=20 %20 Hz
t=0:1/fs:5
y1=sin(2*pi*n/36)
stem(n,y1)
title('x2[n]=sin(2*pi*n/36) Grafik çizimi')

%%
%4.soru
clc
clear all
close all
t=-10:1:10;
g_odd=(g(t)-g(-t))/2
g_even=(g(t)+g(-t))/2;
result=t.*(t.^2+3)
subplot(2,1,2)
plot(t,g_odd) 
title('ODD')
subplot(2,1,1)
plot(t,g_even) 
title('EVEN')
%%
%5.soru

clc
clear all
close all
n=-100:100
y=(0.9.^abs(n)).*sin(2*pi*n/4)
sum(abs(y.^2))

%%

%%
%7.soru
clear all
close all
n = 0:50;
x = 4+cos(2*pi*n/24);
x0 = downsample(x,2,0);
y0 = upsample(x0,2,0);
x1 = downsample(x,10,1);
y1 = upsample(x1,10,1);
subplot(3,1,1)
stem(x,'Marker','none')
ylim([0.5 3.5])
title('Original Signal')


subplot(3,1,3)
stem(y1,'Marker','none')
ylim([0.5 2])
ylabel('Phase 1')

subplot(3,1,2)
stem(y0,'Marker','none')
ylim([0.5 2])
ylabel('Phase 0')

