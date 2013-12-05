clc
close all
clear all

MatrizFinal = zeros(15,7);
clases=dir('DB');
NumClases=length(clases);
path='C:\Users\HP\Documents\MATLAB\DB\';

%%%%%%%%%%%%%%%%%%%%Señal de voz%%%%%%%%%%%%%%%%%%%%%%%%

for i=3:NumClases
    archivo=dir(strcat(path,clases(i).name,'\*.wav'));
    NumArchivos=length(archivo);
    matrizTest=[];
    for j=1:35
        [WavTest,fs]=wavread(archivo(j).name);
        p=floor(3*log(fs));
        n=floor(0.03*fs);
        inc=floor(n/2);
        matrizMel=melcepst(WavTest,fs,'M',12,p,n,inc);
        mediaMel=mean(matrizMel);
        stdMel=std(matrizMel);
        vector=[mediaMel stdMel];
        matrizTest=[matrizTest;vector];
        %wavplay(WavTest,44100)
    end
    M.matriz=matrizTest;
    matricesMel(i-2)=M;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%Gaussiana Multivarada%%%%%%%%%%%%%%%%%

for k=3:NumClases
    MU=mean(matricesMel(k-2).matriz);
    COV=cov(matricesMel(k-2).matriz);
    for i=3:NumClases
        archivo=dir(strcat(path,clases(i).name,'\*.wav'));
        for j=36:50
            [Wav,fs]=wavread(archivo(j).name);
            p=floor(3*log(fs));
            n=floor(0.03*fs);
            inc=floor(n/2);
            X=melcepst(Wav,fs,'M',12,p,n,inc);
            Xmean=mean(X);
            Xstd=std(X);
            X=[Xmean Xstd];    
            pdf=gaussMultivariate(X,MU,COV);
            MatrizFinal(j-35,i-2)=pdf;
            %wavplay(Wav,44100)
        end
    end
    M.matriz=MatrizFinal;
    matricesPDF(k-2)=M;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%