program questao3(input{teclado},output{video},Arq{e/s});
uses crt;
 type
  aluno=record
    nome:string[40];
    matricula:string[10];
    chc:integer;
    cht:integer;
    curso:string[20];
    trancamentos:integer;
    semestrescursados,semestrestotal:integer;
    cr:real;
    nomearqhistorico:string[30];
        end;
  arqalunos= file of aluno;
  Tvetor=array[1..30] of aluno;

 var
  nomearq:string;
  Arq:arqalunos;
  cadAluno:aluno;
  opcao:char;
  vet:Tvetor;
  Numalunos:integer;
  
procedure imprimir(var nomearq:string; var vet:Tvetor);
var
i:integer;
begin
writeln(output,'Nome','       ','Matricula',' ','Chc',' ','Cht',' ','Curso',' ','Tranc.',' ','Sem. curs.',' ','Sem. total',' ','CR',' ','Nome Arq.');
	for i:=1 to Numalunos do
    begin
		with vet[i] do
		begin
		writeln(output,nome,'       ',matricula:9,' ',chc:3,' ',cht:4,' ',curso,' ',trancamentos,' ',semestrescursados:3,' ',semestrestotal:10,'   ',cR:2:1,' ',nomearqhistorico);
		end;
    end;
writeln(output);
end;

procedure gravararq(var nomearq:string; var Arq:arqalunos;var vet:Tvetor);
var
i:integer;
begin
assign(Arq,nomearq);
reset(Arq);
rewrite(Arq);
	for i:=1 to Numalunos do write(Arq,vet[i]);
	close(Arq);
	writeln(output);
end;
  
procedure ordenar(var nomearq:aluno;var vet:Tvetor; var opcao:char);
var
i,j:integer;
aux:aluno;
begin
	if opcao='N' then
	begin
		for i:=Numalunos-1 downto 1 do
		begin
			for j:=1 to i do
			begin
				if (vet[j].nome > vet[j+1].nome) then
				begin
				aux:=vet[j];
				vet[j]:=vet[j+1];
				vet[j+1]:=aux;
				end;
			end;
		end;
	end
	else
		if opcao='M' then
		begin
			for i:=Numalunos-1 downto 1 do
			begin
				for j:=1 to i do
				begin
					if (vet[j].matricula > vet[j+1].matricula) then
					begin
					aux:=vet[j];
					vet[j]:=vet[j+1];
					vet[j+1]:=aux;
					end;
				end;
			end;
		end
	else
		if opcao='R' then
		begin
			for i:=Numalunos-1 downto 1 do
			begin
				for j:=1 to i do
				begin
					if (vet[j].cr > vet[j+1].cr) then
					begin
					aux:=vet[j];
					vet[j]:=vet[j+1];
					vet[j+1]:=aux;
					end;
				end;
			end;
		end
	else
		if opcao='C' then
		begin
			for i:=Numalunos-1 downto 1 do
			begin
				for j:=1 to i do
				begin
					if (vet[j].curso > vet[j+1].curso) then
					begin
					aux:=vet[j];
					vet[j]:=vet[j+1];
					vet[j+1]:=aux;
					end;
				end;
			end;
		end
	else
		if opcao='H' then
		begin
			for i:=Numalunos-1 downto 1 do
			begin
				for j:=1 to i do
				begin
					if (vet[j].chc > vet[j+1].chc) then
					begin
					aux:=vet[j];
					vet[j]:=vet[j+1];
					vet[j+1]:=aux;
					end;
				end;
			end;
		end;
	end;

procedure colocarvetor(var cadAluno:aluno;var nomearq:string; var Arq:arqalunos; var vet:Tvetor);
var
i:integer;
begin
i:=0;
assign(Arq,nomearq);
reset(Arq);
	while not eof(Arq) do
    begin
	i:=i+1;
    read(Arq,cadAluno);
    vet[i]:=cadAluno;
	end;
Numalunos:=i;
close(Arq);
end;

function menu(): char;
	var
	resp:char;
	begin
		repeat 
		writeln(output,'Escolha uma das opcoes:');
		writeln(output,'(N) Ordenar pelo nome');
		writeln(output,'(M) Ordenar pela matricula');
		writeln(output,'(R) Ordenar pelo cR');
		writeln(output,'(C) Ordenar pelo curso');
		writeln(output,'(H) Ordenar pela cHC');
		writeln(output,'(T) Terminar o programa');
		readln(input,resp);
		until resp in ['N','M','R','C','H','T'];
		resp:=upcase(resp);
		opcao:= resp;
	end;  
  
begin
clrscr;

write(output,'Digite o nome do arquivo para ordenar: ');
readln(input,nomearq);
assign(Arq,nomearq);
reset(Arq);
	while not eof(Arq) do read(Arq,cadAluno);
close(Arq);
colocarvetor(cadAluno,nomearq,Arq,vet); 
opcao:=menu;
repeat
	case opcao of
		'N' : ordenar(cadAluno,vet,opcao);
		'M' : ordenar(cadAluno,vet,opcao);
		'R' : ordenar(cadAluno,vet,opcao);
		'C' : ordenar(cadAluno,vet,opcao);
		'H' : ordenar(cadAluno,vet,opcao);
		'T' : writeln(output, 'Terminando a execucao do programa');
		end;
		gravararq(nomearq,Arq,vet); 
		imprimir(nomearq,vet);
until menu = 'T';
readln(input);
end.
