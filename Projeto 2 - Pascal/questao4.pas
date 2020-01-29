program questao4 (input{teclado},output{video});

const
N=50;

type

Telem = 1..N;
Tconj = set of Telem;

var
conjA:Tconj;
conjB:Tconj;

	procedure lervalores(conjA,conjB);
	var
	i:integer;
	
	begin
	i:=0;
	writeln(output,'Digite os valores para o conjunto A, para terminar digite "A"')
	while valor <> 'A' do
	i:=i+1;
	
	end;

	function comparacao();
	var
	
	begin
	if conjA == conjB then
	comparacao:=0
		if conjA <= conjB then
		comparacao:=1
		else
			if conjB <= conjA then
			comparacao:=2
			else
			comparacao:=3
	

	end;
	
begin
lervalores(conjA,conjB);
writeln(output,comparacao(conjA,conjB));
end.

