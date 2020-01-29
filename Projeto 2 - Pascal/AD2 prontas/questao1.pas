program questao1(input{teclado},output{teclado},dados{e});

const
N= 100;  

type
maxaluno= 1..N;
    aluno = record
			ano: integer;
			semestre: integer;
			cargahor: integer;
			nota: real;
			codigo: string[8];
			end;

Tvetor = array [maxaluno] of string;			

	procedure lerinfo(var caminho:string; var infoaluno:aluno; var dados:text);
	var 
	i:integer;
	disc:integer;
	
	begin
	writeln(output,'Quantas disciplinas vai cadastrar?');
	readln(input,disc);
	assign(dados,caminho);
	{$I-}rewrite(dados);{$I+}
	writeln(dados,'Ano',' ','Semestre',' ','Carga horaria',' ','Nota',' ','Codigo');
		for i:=1 to disc do
		begin
			with infoaluno do
			begin
			writeln(output,'Ano em que o aluno cursou a disciplina ',i,': ');
			readln(input,ano);
			writeln(output,'Semestre em que o aluno cursou a disciplina ',i,': ');
			readln(input,semestre);
			writeln(output,'Carga horaria da disciplina ',i,': ');
			readln(input,cargahor);
			writeln(output,'Nota da disciplina ',i,': ');
			readln(input,nota);
			writeln(output,'Codigo da disciplina ',i,': ');
			readln(input,codigo);
			writeln(dados,ano:4,' ',semestre:2,' ',cargahor:7,' ',nota:4:2,' ',codigo:8);
			end;
		end;
	close(dados);
	end;
	
	procedure impriminfo(var infoaluno:aluno);
	begin
		with infoaluno do
		begin
		writeln(output,'Ano','  ','Semestre',' ','Carga horaria',' ','Nota',' ','Codigo');
		writeln(output,ano:4,' ',semestre:8,' ',cargahor:10,' ',nota:4:2,' ',codigo);
		end;
	end;

	procedure lerinfoarq(var caminho:string; var dados:text; var infoaluno:aluno);
	begin
	assign(dados,caminho);
	{$I-}reset(dados);{$I+}
	readln(dados);	
		while not eof(dados) do
		begin
			read(dados,infoaluno.ano);
			read(dados,infoaluno.semestre);
			read(dados,infoaluno.cargahor);
			read(dados,infoaluno.nota);
			readln(dados,infoaluno.codigo);
			impriminfo(infoaluno);
		end;	
	close(dados);
	end;
	
var
	Taluno: Tvetor;
	infoaluno: aluno;
	i: integer;
	numaluno: integer;
	dados: text;
	disc:integer;
	caminho:string;
	
begin
	writeln(output,'Quantos alunos ?');
	readln(input,numaluno);
	for i:=1 to numaluno do
	begin
	writeln(output,'Digite o caminho para o arquivo ',i,' : ');
	readln(input,caminho);
	Taluno[i]:= caminho;
	lerinfo(caminho,infoaluno,dados);
	end;
	for i:=1 to numaluno do 
	begin
	caminho:=Taluno[i];
	lerinfoarq(caminho,dados,infoaluno);
	end;
readln();
end.