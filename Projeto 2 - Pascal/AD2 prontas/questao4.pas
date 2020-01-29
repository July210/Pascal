program questao4 (input{teclado},output{video});

type

TelemA = 1..50;
TelemB = 1..50;
TconjA = set of TelemA;
TconjB = set of TelemB;

var
conjuntoA:TconjA;
conjuntoB:TconjB;


	function comparacao(conjuntoA{e}:TconjA; conjuntoB{e}:TconjB):integer;
	begin
	if conjuntoA = conjuntoB then
	comparacao:=0
	else
		if conjuntoA <= conjuntoB then
		comparacao:=1
		else
			if conjuntoB <= conjuntoA then
			comparacao:=2
			else
			comparacao:=3;
	end;
	
begin
conjuntoA:= [3,5]; {Colocar os valores desejados aqui}
conjuntoB:= [3,5]; {Colocar os valores desejados aqui}
writeln(output,comparacao(conjuntoA,conjuntoB));
readln(input);
end.

