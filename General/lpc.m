function [a,err]=lpc(x,n1,n2,p);
% FUNCION [a,err]=lpc(x,n1,n2,p);  n1>=p+1
%  Permite el cálculo de los coeficientes de predicción lineal
% del segmento de x comprendido entre las muestras n1 y n2.
%  Da además el error de predicción cometido.
%  Parámetros:       a= Coeficientes de predicción lineal.
%			[1 -a1 -a2....-ap]
%                    err= Error de predicción.
%                    x= Vector a analizar.
%                    n1= Primera muestra de la ventana.
%                    n2= Ultima muestra de la ventana.
%                    p= Numero de coeficientes.


%**********************
% ECUACION: s=A*a+err
%**********************

 % OBTENCION DE A

 fila=x(n1-1:-1:n1-p);
 columna=x(n1-1:n2-1);
 A=toeplitz(columna,fila);

 % OBTENCION DE s

    s=x(n1:n2)';

 % CALCULO DE LA ECUACION a=A\s

    a=A\s;


 % CALCULO DEL ERROR err

    err=(s-A*a)';

    a=[1 -a'];
