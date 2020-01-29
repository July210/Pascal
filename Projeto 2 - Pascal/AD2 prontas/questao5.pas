
program questao5(input{teclado},output{video});

type
 t_info=integer;
 t_pont=^t_elemento;
 t_elemento=record
             num:t_info;
             prox:t_pont;
            end;
 Tvetor=array[1..50] of integer;
 var
  Prim:t_pont;
  N:integer;
  vetor:Tvetor;
  fechar:boolean;
  i:integer;


procedure lervalor(var vet:Tvetor);
var
valor,i: integer;
begin
i:=0;
writeln(output,'Digite 0 para finalizar');
	while (valor <> 0) do
	begin
	i:= i + 1;
	writeln(output,'Informe um valor: ');
	readln(input,valor);
	vet[i]:=valor;
	end;
N:=i;
end;

procedure tlista(var vet:Tvetor; var Prim:t_pont);
var
i:integer;
P:t_pont;
	
begin
	Prim:=nil;
	for i:=1 to N do
	begin
	new(P);
	P^.num:=vet[i];
	P^.prox:=Prim;
	Prim:=P;
	end;
end;

procedure retiraimpar(var Prim:t_pont);
var
P,aux,ultimo:t_pont;
final:boolean;
begin
P:=Prim;
final:=true;
	if (P=nil) then
    final:=false
	else
    begin
		while (P<>nil) and (final) do
		begin
			if ((P^.num mod 2)<>0) and (P^.prox<>nil) then
			begin
			aux:=P^.prox;
			P^.num:=aux^.num;
			P^.prox:=aux^.prox;
			end
			else
				if (P^.num mod 2=0) and (P^.prox<>nil) then
				begin
				ultimo:=P;
				aux:=P^.prox;
				P:=aux;
				end;
			if (P^.prox=nil) then
			begin
				if (P^.num mod 2 = 0) then final:=false;
				if (P^.num mod 2 <>0) then
				begin
				ultimo^.prox:=P^.prox;
				final:=false;
				end;
			end;
		end;
    end;
end;

procedure imprimirlista(var Prim{e/s}:t_pont);
var
Aux,p:t_pont;
begin
p:=Prim;
write(output,'A lista ficou assim : ');
	while (p<>nil) do        
    begin
    write(output,' ',P^.num);
    Aux:=P^.prox;
    P:=Aux;
    end;
end;

begin
lervalor(vetor);
tlista(vetor,Prim);
retiraimpar(Prim);
imprimirlista(Prim);
readln(input);
end.
