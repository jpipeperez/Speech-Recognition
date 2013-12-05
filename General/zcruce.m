function y=zcruce(vector);
%FUNCION y=zcruce(vector);
%     Calcula la tasa de cruces por cero de VECTOR.

long=length(vector);
y=0.5*sum(abs(sign(vector(2:long))-sign(vector(1:long-1))));
