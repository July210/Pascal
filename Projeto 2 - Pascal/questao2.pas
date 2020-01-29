program (input{teclado}, output{video}, Dados{e});

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
		cR: real
		nomeArquivoHistorico: string[30];
	end;
arqAlunos = file of aluno;
T_vetor = array [1..N] of string;

var
CadastroAluno: arqAlunos;
Alunocad: aluno
nomeArq: T_vetor;
numcad:integer;
continua: string;
i: integer;

	procedure imprimirarq();
	begin
	writeln(output,'Nome: ',CadastroAluno.nome);
	writeln(output,'Matricula: 'CadastroAluno.matricula);
	writeln(output,'cHC: 'CadastroAluno.cHC);
	writeln(output,'cHT: 'CadastroAluno.cHT);
	writeln(output,'Curso: 'CadastroAluno.curso);
	writeln(output,'Trancamentos: 'CadastroAluno.trancamentos);
	writeln(output,'Semestres cursados: 'CadastroAluno.semestresCursados);
	writeln(output,'Total de semestres: 'CadastroAluno.semestresTotal);
	writeln(output,'CR: 'CadastroAluno.cR);
	writeln(output,'Nome do arquivo: 'CadastroAluno.nomeArquivoHistorico);
	end;
	
	procedure lerarq(nomeArq{e}:T_vetor; Dados{e}:text; numcad{e}:integer);
	var 
	i: integer;
	
	begin
		for i:=1 to numcad do
		begin
		assign(CadastroAluno,nomeArq[i]);
		reset(CadastroAluno);
		read(CadastroAluno,Alunocad);
		close(CadastroAluno);
		imprimirarq();
		end;
	end;
	
	procedure cadastro(numcad:integer;);
	begin
		while (numcad<N) and (continua = (('s') or ('S'))) do
		begin
		writeln(output,'Entre com o endereço do arquivo: ');
		readln(input,nomeArq[i]);
		writeln(output,'Nome do aluno: ');
		read(input,CadastroAluno.nome);
		writeln(output,'Digite a matricula: ')
		read(input,CadastroAluno.matricula);
		writeln(output,'Digite a carga horaria cursada: ');
		read(input,CadastroAluno.cHC);
		writeln(output,'Digite a carga horaria total: ');
		read(input,CadastroAluno.cHT);
		writeln(output,'Digite o curso: ');
		read(input,CadastroAluno.curso);	
		writeln(output,'Digite o numero de materias trancadas : ');
		read(input,CadastroAluno.trancamentos);
		writeln(output,'Digite os semestres cursados: ');
		read(input,CadastroAluno.semestresCursados);
		writeln(output,'Digite a quantidade total de semestres: ');
		read(input,CadastroAluno.semestresTotal);
		writeln(output,'Digite o CR: ');
		read(input,CadastroAluno.cR);
		CadastroAluno.nomeArquivoHistorico:=nomeArq[i];
		
		assign(CadastroAluno,nomeArq[i])
		rewrite(CadastroAluno);
		write(CadastroAluno,Alunocad);
		close(CadastroAluno);
		
		i:=i+1;
		writeln(output,'Quer fazer outro cadastro?');
		readln(input,continua);
		end;
	end;
	
	
	begin
	i:=1;
	continua:='s';
	cadastro(numcad);
	
	end.