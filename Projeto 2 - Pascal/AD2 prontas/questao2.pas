program questao2(input{teclado}, output{video}, Dados{s});

uses crt;

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
arqAlunos = file of aluno;

var
CadastroAluno: arqAlunos;
Alunocad: aluno;
numcad:integer;
nomearq: string;

	procedure lervalor(var Arq{s}:arqAlunos; numcad{e}:integer; nomearq:string);
	var
	i: integer;
	CadAluno: aluno;

	begin
	assign(Arq,nomearq);
	rewrite(Arq);
		for i:=1 to numcad do
		begin
		writeln(output,'Nome do aluno: ');
		readln(input,CadAluno.nome);
		writeln(output,'Digite a matricula: ');
		readln(input,CadAluno.matricula);
		writeln(output,'Digite a carga horaria cursada: ');
		readln(input,CadAluno.cHC);
		writeln(output,'Digite a carga horaria total: ');
		readln(input,CadAluno.cHT);
		writeln(output,'Digite o curso: ');
		readln(input,CadAluno.curso);	
		writeln(output,'Digite o numero de materias trancadas : ');
		readln(input,CadAluno.trancamentos);
		writeln(output,'Digite os semestres cursados: ');
		readln(input,CadAluno.semestresCursados);
		writeln(output,'Digite a quantidade total de semestres: ');
		readln(input,CadAluno.semestresTotal);
		writeln(output,'Digite o CR: ');
		readln(input,CadAluno.cR);
		writeln(output,'Digite o nome do arquivo historico: ');
		readln(input,CadAluno.nomeArquivoHistorico);
		write(Arq, CadAluno);
		end;
	close(Arq);
	end;

	procedure imprnatela(var Arq:arqAlunos; nomearq:string); 
	var
	CadAluno: aluno;
	
	begin
	assign(Arq,nomearq);
	reset(Arq);
		while not eof(Arq) do
		begin
		read(Arq, CadAluno);
		writeln(output,'Nome: ',CadAluno.nome);
		writeln(output,'Matricula: ',CadAluno.matricula);
		writeln(output,'CHC: ',CadAluno.cHC);
		writeln(output,'CHT: ',CadAluno.cHT);
		writeln(output,'Curso: ',CadAluno.curso);
		writeln(output,'Trancamentos: ',CadAluno.trancamentos);
		writeln(output,'Semestres cursados: ',CadAluno.semestresCursados);
		writeln(output,'Total de semestres: ',CadAluno.semestresTotal);
		writeln(output,'CR: ',CadAluno.cR:2:2);
		writeln(output,'Nome do arquivo historico: ',CadAluno.nomeArquivoHistorico);
		writeln(output,'-----------');
		writeln(output);
		end;
	close(Arq);
	end;

begin
clrscr;
	write(output, 'Diga o nome do arquivo: ');
	readln(input, nomearq);	
	write(output, 'Diga o numero de alunos para o cadastro: ');
	readln(input, numcad);
	lervalor(CadastroAluno,numcad,nomearq);
	imprnatela(CadastroAluno,nomearq);
	readln(input);
end.	



