close all; %cierra todas la ventanas abiertas antes de iniciar el programa 
clear; %borra cualquier variable activa en MATLAB 
[y,fs]=wavread('Adelante1.wav');
k=0; 
while(1) 
fprintf('La frecuencia de muestreo es: %d\n',fs); 
tam=size(y); %tamaño del vector sonido 
n=tam(1) %total de muestras de sonido 
fl=round(n/2); %Mitad de muestras redondeada 
k=k+1; %Contador de figuras 
figure(k); 
subplot(2,1,1); %Grafica de Sonido en el tiempo. 
plot(y,'r');axis([1000,5000,-1,1]);xlabel('Tiempo');ylabel('Amplitud');title('Señal en el tiempo'); %Detalles grafica 
espectro=abs(fftshift(fft(y))); 
[menor pri]=sort(espectro); %Ordena el espectro de menor a mayor 
if 2*fl==n %Detector de Frecuencias medias de sonido 
fd1=-fl; 
fd2=fl-1; 
else 2*fl>n 
fd1=1-fl; 
fd2=fl-1; 
end 
subplot(2,1,2); %Grafica de espectro de señal 
plot(fd1:1:fd2,espectro);axis([0,5000,0,menor(n)]);xlabel('Frecuencia');ylabel('Amplitud');title('Señal en Frecuencia'); %Detalles grafica 
sound(y,fs); 
disp('¿Desea escuchar reverberacion?') 
rev=input('y/n: ','s'); 
if rev=='y' %Efecto reverberacion 
a=0.5; %Magnitud de la reverberacion 
R=5000; %Numero de muestras para el efecto 
x=zeros(size(y)); 
for i=1:1:R+1 
x(i) = y(i); %vector de efecto 
end 
for i=R+1:1:n 
x(i)= y(i)+ a*y(i-R); %sonido mas efecto 
end; 
sound(x,fs); 
end 
disp('¿Desea escuchar la señal filtrada?') 
flt=input('y/n: ','s'); 
if flt=='y' %Efecto Filtros 
%--------------------------------------------------------------- 
%Filtro Pasa bajos 
Wn = .20; %Frecuencia de Corte. 0 N = 30; %Grado del filtro 
LP = fir1(n,Wn); %filtro pasa bajos 
%--------------------------------------------------------------- 
%Filtro Pasa bandas 
Wn1 = [.20, .50]; %Frecuencias de corte 
BP = fir1(n,Wn1); %Filtro Pasa bandas 
%--------------------------------------------------------------- 
%Filtro Pasa bajos 
Wn2 = .50; %Frecuencia de corte 
HP = fir1(n,Wn2,'high');%filtro pasa altas 
%-------------------------------------------------------------- 
gLP = 0.4;gBP = 1.5;gHP = 1.5; %ganancia de filtros 
y1 = conv(LP,y); %convolucion señal y filtro 
y2 = conv(BP,y); %convolucion señal y filtro 
y3 = conv(HP,y); %convolucion señal y filtro 
fre=round(length(y1)/2); 
if 2*fre==length(y1)%Detector de Frecuencias medias de sonido 
fd3=-fre; 
fd4=fre-1; 
else 2*fre>length(y1) 
fd3=1-fre; 
fd4=fre-1; 
end 
input('Pasa Altas') 
yA= gHP * y3; %Señal por filtro pasa altas 
espectroaltas=abs(fftshift(fft(yA)));%frecuencias 
sound(yA,fs) 
input('Pasa Banda') 
yB= gBP * y2; %Señal por filtro pasa banda 
espectrobanda=abs(fftshift(fft(yB)));%frecuencias 
sound(yB,fs) 
input('Pasa Baja') 
yC= gLP * y1; %Señal por filtro pasa baja 
espectrobajos=abs(fftshift(fft(yC)));%frecuencias 
sound(yC,fs) 
input('Señal Recuperada') 
yD = yA + yB + yC; %Suma de señales filtradas 
espectrotodo=abs(fftshift(fft(yD))); 
sound(yD,fs) 
k=k+1; 
figure(k); 
subplot(4,1,1) 
plot(fd3:fd4,espectroaltas);xlabel('Frecuencia');ylabel('Amplitud');title('Señal en Frecuencia Pasa Altas'); 
subplot(4,1,2) 
plot(fd3:fd4,espectrobanda,'r');xlabel('Frecuencia');ylabel('Amplitud');title('Señal en Frecuencia Pasa Banda'); 
subplot(4,1,3) 
plot(fd3:fd4,espectrobajos,'k');xlabel('Frecuencia');ylabel('Amplitud');title('Señal en Frecuencia Pasa Bajos'); 
subplot(4,1,4) 
plot(fd3:fd4,espectrotodo);xlabel('Frecuencia');ylabel('Amplitud');title('Señal en Frecuencia Completa'); 
end 
disp('¿Ejecutar nuevamente el Programa?'); 
F=input('y/n:','s'); 
if F=='y' 
fs=input('Ingrese Nueva Frecuencia de Muestreo:'); 
elseif F=='n' 
break 
end 
end 