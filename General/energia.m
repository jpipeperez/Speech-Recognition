function y=energia(vector,tipo);
%FUNCION y=energia(vector,tipo);
%        Calcula la energ�a de VECTOR.
%        Par�metro:    tipo:   0.Por valores cuadr�ticos.
%                              1.Por valores absolutos.

	if(tipo==0),
		y=sum(vector.^ 2);
	elseif(tipo==1),
		y=sum(abs(vector));
	end;

	y=y/(length(vector));
