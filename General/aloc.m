function y=aloc(x,m1,m2,l,ss,itipoa,itipov);
% FUNCION y=aloc(x,m1,m2,l,ss,itipoa,itipov);
% Realiza medidas localizadas en el tiempo (energía,tasa de cruces por cero y
%  autocorrelación) y medidas localizadas en frecuencia (espectro localizado)
%  a partir de un vector de datos x. 
% Permite el uso de diversas ventanas de análisis y velocidades 
%  de actualización de las medidas.                   
%    Parámetros:    y: Devuelve el resultado.
%                   x: Vector de entrada con el segmento a 
%                   analizar.
%                   m1: Punto inicial del análisis sobre x.
%                   m2: Punto final del análisis sobre x.
%                   l: Longitud de la ventana de análisis.
%                   ss: Número de muestras sin solapar entre 
%                   ventanas sucesivas.
%                   itipoa: Tipo de medida a realizar:
%                        0.Energía.          1.Cruces por cero.
%                        2.Autocorrelación.  3.Energía(módulos).
%                        4.Espectro.
%                   itipov: Tipo de enventanado:
%                                    0. Rectangular. 
%                                    1. Hamming.

	y=[];z=0;
	inicio=m1;
	extremo=m1+l-1;
	
	if(itipov==0),
		ventana=ones(1,l);
	elseif(itipov==1),
		ventana=(hamming(l))';
	end;

	disp('Calculando...');

	while(extremo<=m2),

		segmento=x(inicio:extremo).*ventana;

		if(itipoa==0),
			z=energia(segmento,0);
			y=[y z];
		elseif(itipoa==1),
			z=zcruce(segmento);
			y=[y z];
		elseif(itipoa==2),
			z=xcorr(segmento);  
			z=z/max(z);
			y=[y
			   z];
		elseif(itipoa==3),
			z=energia(segmento,1);
			y=[y z];
		elseif(itipoa==4),
			z=abs(fft(segmento));
			y=[y
			   z];
		end;    
	
		inicio=inicio+ss;
		extremo=extremo+ss;
%	disp('EXTREMO= ');disp(extremo);

	end; %while

%GRAFICAS ************************************************

	lugar=input('SITUACION DE LA GRAFICA= ');
	caracter=input('Simbolo (-)(--)(-.)(:),(.)(+)(*)(o)(x): ','s');
	caracter=['''' caracter ''''];
	titulo=input('Titulo: ','s');

%titulo=[titulo1 int2str(l) titulo2 int2str(ss) titulo3];

	[h m]=size(y);

	n=fix(m1+l/2+(0:m-1)*ss); % Eje de muestras real
	f=11127.25*(0:(m/2-1))/m;  % Eje de frecuencias

	nn=0:fix(m/2);	% Eje para la autocorrelacion
	longnn=length(nn);
	central=fix(m/2)+1;	% Punto central

% Energia:

	if(itipoa==0)|(itipoa==3),
		subplot(lugar);plot(n,y,eval(caracter));
		title(titulo);
	end;

% Tasa de cruces por cero:

	if(itipoa==1),
		subplot(lugar); plot(n,y,eval(caracter));
		title(titulo);
	end;

% Autocorrelacion:

	if(itipoa==2),
		subplot(lugar);
		plot(nn,y(fix(h/2)+1,central:central+longnn-1),eval(caracter));
		title(titulo);
	end;

% Espectro:

	if(itipoa==4),
		subplot(lugar);  
		semilogy(f,y(fix(h/2)+1,1:m/2),eval(caracter));
		title(titulo);
	end;

	pause;

