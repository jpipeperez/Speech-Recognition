
clc;
clear all;
close all;

%%%%%%%%%%%%%%%% Grabación de las palabras %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%   Bloque de ADQUISICIÓN    %%%%%%%%%%%%%%%%%%%%%%%

recObj = audiorecorder(44100, 16, 1);
disp('Start speaking.')
recordblocking(recObj, 3);
disp('End of Recording.');

palgra = getaudiodata(recObj);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%  Separar las palabras %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Bloque de SEGMENTACIÓN %%%%%%%%%%%%%%%%%%%%%%%%%%%

[actividad,zo]=vadsohn(palgra,44100);

nact=size(actividad,1)-1;
new=[];
i=1;
bandera=false;
cont=1;

for i=2:nact
%while bandera==false
    if actividad(i)==1
       new=[new palgra(i)]; 
       %disp(i);
    end
    if actividad(i-1)==1 && actividad(i)==1 && actividad(i+1)==0
        if length(new)>7000
            %bandera=true;
            segmentacion.seg=new;
            palabras(cont)=segmentacion;
            cont=cont+1;
        end
        new=[];
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

np=size(palabras,2);

for j=1:np
    wavplay(palabras(1,j).seg,44100)
end
%wavplay(WavTest,44100)
%wavplay(new,44100)