program Questao4 (input{teclado},output{video});

const
N=50;

type
Telem = 1..N;
Tvetor = array [Telem] of integer;

var
vet:Tvetor;
i:integer;

procedure buscamaioremenor(maiorval,menorval{e/s}:integer; V{e}:Tvetor);
	var
	i:integer;
	begin
		for i:=1 to N do
		begin
			if V[i] <= menorval then
			menorval:=V[i];
			if V[i] >= maiorval then
			maiorval:=V[i];
		end;
	writeln(output,'O maior valor gerado: ', maiorval, ' E o menor: ', menorval);
	end;
	

	procedure maiorsoma(V{e}:Tvetor);
	var 
	som,i,temp,valor1,valor2:integer;
	begin
	som:= V[1]+V[2];
		for i:=2 to N-1 do
		begin
		temp:=V[i]+V[i+1];
			if temp > som then
			begin			
			som:=temp;
			valor1:=V[i];
			valor2:=V[i+1];
			end;
		end;
	writeln(output,'Os valores que possuem a maior soma: ', valor1,', ',valor2);
	end;
	
	procedure maiordiferenca(V{e}:Tvetor);
	var 
	maiordif,dif,i,temp,valor1,valor2:integer;
	
	begin
	dif:=V[1]-V[2];
		for i:=2 to N-1 do
		begin
		temp:=V[i]-V[i+1];
			if temp > dif then
			begin
			dif:=temp;
			valor1:=V[i];
			valor2:=V[i+1];
			end;
		end;
	writeln(output,'Os valores consecutivos com a maior diferenca: ',valor1,' ',valor2); 
	writeln(output,'O modulo da diferenca entre os valores: ',ABS(dif));
	end;

	procedure maioremenormedia(V{e}:Tvetor; mediaval:real);
		var	
		mediamen,mediamai,i:integer;
		
		begin
		mediamen:=0;
		mediamai:=0;
			for i:=1 to N do
			begin
			if mediaval > V[i] then
			mediamen:= mediamen + 1;
			if mediaval < V[i] then
			mediamai:= mediamai + 1;
			end;
		writeln('Valores menores que a media: ',mediamen);
		writeln('Valores maiores que a media: ',mediamai);
		end;
	
	procedure mediadevalores(V{e}:Tvetor);
	var
	total,i:integer;
	mediaval:real;
	
	begin
	total:=0;
		for i:=1 to N do
		total:=V[i]+total;
	mediaval:=total/N;
	writeln('A media de valores gerados: ',mediaval:4:2);
	maioremenormedia(V,mediaval);
	end;	
	
	procedure maisocorrido(V{e}:Tvetor);
	var 
	Trep:array[1..20] of integer;
	i,maior:integer;
	
	begin
	maior:=0;
		for i:=1 to 20 do 
		Trep[i]:=0;	
		for i:=1 to 50 do 
		Trep[vet[i]]:=Trep[vet[i]]+1;
		for i:=1 to 20 do
		begin
		if Trep[i]>maior then
		maior:=Trep[i];
		end;
	write(output,'Valor(es) que mais ocorreu(ram): ');
		for i:=1 to 20 do
		begin
			if Trep[i]=maior then
			write(output,i:3);
		end;
	writeln(output);
	end;
	
begin
randomize;
	writeln(output,'Os vetores sao: ');
	for i:=1 to N do
	begin
	vet[i]:=random(20)+1;
	write(output,vet[i],' ');
	end;
	writeln(output);
	buscamaioremenor(0,21,vet);	
	maiorsoma(vet);
	maiordiferenca(vet);
	mediadevalores(vet);
	maisocorrido(vet);
	readln();
	
end.
