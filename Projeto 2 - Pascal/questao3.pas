program questao3(input{teclado}, output{video}, Dados{e});

const 
N=100;

type 
	aluno = record
		nome: string[40];
		matricula: string[10];
		cHC: integer;
		cHT: integer;
		curso: string[20];
		trancamentos: integer;
		semestresCursados, semestresTotal: integer;
		cR: real;
		nomeArquivoHistorico: string[30];
	end;
	
arqAluno = file of aluno;
Tvetor = array [1..N] of aluno;

	function opcao(): char;
	var
	resp: char;
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
		resp:= upcase(resp);
		until resp in ['N','M','R','C','H'];
		opcao:= resp;
	end;

procedure lerarq(var vet:arqAlunos; var nomearq:string; Numalunos{s}:integer;);
var
i:integer;
Arq:arqAlunos

begin
	i:=1;
	assing(Arq,nomearq);
	reset(Arq);
	while not eof(Arq) do
	begin
	readln(Arq,vet[i]);
	i:=i+1;
	end;
Numalunos:=i;
end;

procedure ordenar(var a:integer; nomearq:string; Numalunos:integer);
var
i,j:integer;
temp:arqAluno;

begin
	if a=1 then
	begin
		for i:=Numalunos-1 downto 1 do
		begin	
			for j:=1 to i do
			begin	
				if (vet[j].nome > vet[j+1].nome) then
				begin
				temp:=vet[j];
				vet[j]:=vet[j+1];
				vet[j+1]:=temp;
				end;
			end;
		end;
	end
	else 
		if a=2 then
		begin
			for i:=Numalunos-1 downto 1 do
			begin	
				for j:=1 to i do
				begin	
					if (vet[j].matricula > vet[j+1].matricula) then
					begin
					temp:=vet[j];
					vet[j]:=vet[j+1];
					vet[j+1]:=temp;
					end;
				end;
			end;
		end
		else	
			if a=3 then
			begin
				for i:=Numalunos-1 downto 1 do
				begin	
					for j:=1 to i do
					begin	
						if (vet[j].cR > vet[j+1].cR) then
						begin
						temp:=vet[j];
						vet[j]:=vet[j+1];
						vet[j+1]:=temp;
						end;
					end;
				end;
			end
			else
				if a=4 then
				begin
					for i:=Numalunos-1 downto 1 do
					begin	
						for j:=1 to i do
						begin	
							if (vet[j].curso > vet[j+1].curso) then
							begin
							temp:=vet[j];
							vet[j]:=vet[j+1];
							vet[j+1]:=temp;
							end;
						end;
					end;
				end
				else
					if a=5 then
					begin
						for i:=Numalunos-1 downto 1 do
						begin	
							for j:=1 to i do
							begin	
								if (vet[j].cHC > vet[j+1].cHC) then
								begin
								temp:=vet[j];
								vet[j]:=vet[j+1];
								vet[j+1]:=temp;
								end;
							end;
						end;
					end;
end;

procedure colocararq(var nomearq:string; vet:arqAlunos; Numalunos:integer);
var
Arq:Arqaluno;
i:integer;
begin
assign(Arq,nomearq);
rewrite(Arq);
	for i:=1 to Numalunos do writeln(Arq,vet[i]);
close(Arq);
end;

procedure imprimir(var Arq:Arqaluno; nomearq:string; var vet:Tvetor);
var
i:integer;

begin
assign(Arq,nomearq);
reset(Arq);
	while not eof(Arq) do
	begin
	readln(Arq,vet[i]);
	i:=i+1;
	end;
close(Arq);
end;
	
var
arq: arqAlunos;
nomearq: string;
Numalunos:integer;
vet:Tvetor;

begin
	write(output, 'Diga o nome do arquivo: ');
	readln(input, nomearq);
	assign(arq,nomearq);
	lerarq(Numalunos);	
	repeat
	menu:=opcao;
		case menu of 
		'N': ordenar(1,nomearq,Numalunos);
		'M': ordenar(2,nomearq,Numalunos);
		'R': ordenar(3,nomearq,Numalunos);
		'C': ordenar(4,nomearq,Numalunos);
		'H': ordenar(5,nomearq,Numalunos);
		'T': writeln(output, 'Terminando a execucao do programa');
		end;
		colocararq(nomearq,vet,Numalunos);
		imprimir(Arq,nomearq,vet);
		readln(input);
	until opcao = 'T';	
end.	
