
clc;
clear all;
close all;

%%%%%%%%%%%%%%%% Grabación de las palabras %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%   Bloque de ADQUISICIÓN    %%%%%%%%%%%%%%%%%%%%%%%

recObj = audiorecorder(22050, 16, 1);
disp('Start speaking.')
recordblocking(recObj, 2);
disp('End of Recording.');

palgra = getaudiodata(recObj);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%   Filtrar las palabras   %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Bloque de PRETRATAMIENTO %%%%%%%%%%%%%%%%%%%%%%%%%

palfil=filterLP22(palgra);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%  Separar las palabras %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Bloque de SEGMENTACIÓN %%%%%%%%%%%%%%%%%%%%%%%%%%%

[actividad,zo]=vadsohn(palfil,11025);

nact=size(actividad,1)-1;
new=[];
i=1;
bandera=false;
cont=1;
palabraSegmentada=[];

for i=2:nact
%while bandera==false
    if actividad(i)==1
       new=[new palfil(i)]; 
       %disp(i);
    end
    if actividad(i-1)==1 && actividad(i)==1 && actividad(i+1)==0
        if length(new)>8000
            %bandera=true;
%             segmentacion.seg=new;
%             palabras(cont)=segmentacion;
%             cont=cont+1;
            palabraSegmentada=[palabraSegmentada new];
        end
        new=[];
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% np=size(palabras,2);
% 
% for j=1:np
%     wavplay(palabras(1,j).seg,22050)
% end

%%%%%%%%%%%%%%%% Caracterizar la palabra con MFCC %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%    Bloque de CARACTERIZACIÓN  %%%%%%%%%%%%%%%%%%

fs=22050;
p=floor(3*log(fs));
n=floor(0.03*fs);
inc=floor(n/2);
matrizMel=melcepst(palabraSegmentada,fs,'M',12,p,n,inc);
mediaMel=mean(matrizMel);
stdMel=std(matrizMel);
vectorMFCC=[mediaMel stdMel];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




