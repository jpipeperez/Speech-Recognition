%function Xmel()

clc
close all
clear all

disp('Inicio de algoritmo');

clases=dir('DB');
NumClases=length(clases);
%path='C:\Users\HP\Documents\MATLAB\Voice_Recognition\DB\'; %%%% Personal
path='C:\Users\GEPAR\Documents\MATLAB\Sonido\Voice_Recognition\DB\'; %%%% Gepar
X=[];
Y=[];
Xe=[];
Ye=[];
Xp=[];
Yp=[];

%%%%%%%%%%%%%%%%%%%%Señal de voz%%%%%%%%%%%%%%%%%%%%%%%%

for i=3:NumClases
    archivo=dir(strcat(path,clases(i).name,'\*.wav'));
    NumArchivos=length(archivo);
    matrizTest=[];
    disp(strcat('La i es = ',num2str(i-2)));
    for j=1:NumArchivos-1
        disp(strcat('La j es = ',num2str(j)));
        [WavTest,fs]=wavread(archivo(j).name);
        Wav=filterLP22(WavTest);
        p=floor(3*log(fs));
        n=floor(0.03*fs);
        inc=floor(n/2);
        matrizMel=melcepst(Wav,fs,'M',12,p,n,inc);
        mediaMel=mean(matrizMel);
        stdMel=std(matrizMel);
        vector=[mediaMel stdMel];
        matrizTest=[matrizTest;vector];
        %wavplay(WavTest,44100)
        if i-2==1
            vector=[1 0 0 0 0 0 0];
            Y=[Y;vector];
        elseif i-2==2
            vector=[0 1 0 0 0 0 0];
            Y=[Y;vector];
        elseif i-2==3
            vector=[0 0 1 0 0 0 0];
            Y=[Y;vector];
        elseif i-2==4
            vector=[0 0 0 1 0 0 0];
            Y=[Y;vector];
        elseif i-2==5
            vector=[0 0 0 0 1 0 0];
            Y=[Y;vector];
        elseif i-2==6
            vector=[0 0 0 0 0 1 0];
            Y=[Y;vector];
        elseif i-2==7
            vector=[0 0 0 0 0 0 1];
            Y=[Y;vector];
        end
    end
    M.matriz=matrizTest;
    %matricesMel(i-2)=M;
    X=[X;matrizTest];
end

PorcentajeEnt=round(NumArchivos*0.7);

for i=3:NumClases
    archivo=dir(strcat(path,clases(i).name,'\*.wav'));
    NumArchivos=length(archivo);
    matrizTest=[];
    for j=1:PorcentajeEnt
        [WavTest,fs]=wavread(archivo(j).name);
        Wav=filterLP22(WavTest);
        p=floor(3*log(fs));
        n=floor(0.03*fs);
        inc=floor(n/2);
        matrizMel=melcepst(Wav,fs,'M',12,p,n,inc);
        mediaMel=mean(matrizMel);
        stdMel=std(matrizMel);
        vector=[mediaMel stdMel];
        matrizTest=[matrizTest;vector];
        %wavplay(WavTest,44100)
        if i-2==1
            vector=[1 0 0 0 0 0 0];
            Ye=[Ye;vector];
        elseif i-2==2
            vector=[0 1 0 0 0 0 0];
            Ye=[Ye;vector];
        elseif i-2==3
            vector=[0 0 1 0 0 0 0];
            Ye=[Ye;vector];
        elseif i-2==4
            vector=[0 0 0 1 0 0 0];
            Ye=[Ye;vector];
        elseif i-2==5
            vector=[0 0 0 0 1 0 0];
            Ye=[Ye;vector];
        elseif i-2==6
            vector=[0 0 0 0 0 1 0];
            Ye=[Ye;vector];
        elseif i-2==7
            vector=[0 0 0 0 0 0 1];
            Ye=[Ye;vector];
        end
    end
    M.matriz=matrizTest;
    %matricesMel(i-2)=M;
    Xe=[Xe;matrizTest];
end

for i=3:NumClases
    archivo=dir(strcat(path,clases(i).name,'\*.wav'));
    NumArchivos=length(archivo);
    matrizTest=[];
    for j=PorcentajeEnt+1:NumArchivos
        [WavTest,fs]=wavread(archivo(j).name);
        Wav=filterLP22(WavTest);
        p=floor(3*log(fs));
        n=floor(0.03*fs);
        inc=floor(n/2);
        matrizMel=melcepst(Wav,fs,'M',12,p,n,inc);
        mediaMel=mean(matrizMel);
        stdMel=std(matrizMel);
        vector=[mediaMel stdMel];
        matrizTest=[matrizTest;vector];
        %wavplay(WavTest,44100)
        if i-2==1
            vector=[1 0 0 0 0 0 0];
            Yp=[Yp;vector];
        elseif i-2==2
            vector=[0 1 0 0 0 0 0];
            Yp=[Yp;vector];
        elseif i-2==3
            vector=[0 0 1 0 0 0 0];
            Yp=[Yp;vector];
        elseif i-2==4
            vector=[0 0 0 1 0 0 0];
            Yp=[Yp;vector];
        elseif i-2==5
            vector=[0 0 0 0 1 0 0];
            Yp=[Yp;vector];
        elseif i-2==6
            vector=[0 0 0 0 0 1 0];
            Yp=[Yp;vector];
        elseif i-2==7
            vector=[0 0 0 0 0 0 1];
            Yp=[Yp;vector];
        end
    end
    M.matriz=matrizTest;
    %matricesMel(i-2)=M;
    Xp=[Xp;matrizTest];
end

N=size(X,1);
X = [ones(N,1),X];
N=size(Xe,1);
Xe = [ones(N,1),Xe];
N=size(Xp,1);
Xp = [ones(N,1),Xp];

disp('Obtención de los Xe, Xp, Ye, Yp, finalizada');

save('Xmel.mat','X','Y','Xe','Ye','Xp','Yp');

%clc
close all
clear all

%end
