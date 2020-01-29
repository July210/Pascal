program questao1(input{teclado},output{video},Dados{s});

uses crt;

const
N=1000;
type
	disciplina = record
		nomeDisciplina: string[20];
		anoDisciplina: string[4];
		semestredisciplina: string[2];
		cargahor: integer;
		nota: integer;
		codigo: string[8];

	aluno = record
		nome: string[40];
		matricula: disciplina;
	end;
	
	CadastroAluno: array [1..N] of aluno;

var

Dados: text;
Nomearq: string;

	procedure lercadastro();
	begin
	
	CLRSCR;
	
		with CadastroAluno do
		begin
		write(output,'Entre com o nome do arquivo de dados: ');
		readln(input,Nomearq);
		assign (Dados,Nomearq{duvida aqui});
		Rewrite(Dados);
		writeln (output,'Digite o nome do aluno: ');
		read(input,aluno.nome);
		read(Dados,Separador);{duvida aqui}
		writeln (output,'Digite o nome da disciplina: ');
		read(input,aluno.matricula.nomeDisciplina);
		writeln (output,'Digite o ano em que essa disciplina foi cursada: ');
		read(input,aluno.matricula.anoDisciplina);
		writeln (output,'Em que semestre cursou essa disciplina? ');
		read(input,aluno.matricula.semestresCursados);
		writeln (output,'Qual a carga horaria da disciplina? ');
		read(input,aluno.matricula.cargahor);
		writeln (output,'Digite a nota obtida na disciplina: ');
		read(input,aluno.matricula.nota);
		writeln (output,'Digite o código da disciplina: ');
		read(input,aluno.matricula.codigo);
		close(CadastroAluno);
		end;
	end;

	procedure imprimircadastro();
	var
	i: integer;
	
	begin
	
	CLRSCR;
	
	writeln (output, );
	for i:= 1 to  
	
	
	
	
	end;
	
begin

	while cont == (('s') or ('S')) do
	begin
	lercadastro();
	writeln(output,'Quer fazer outro cadastro?');
	readln(input,cont);
	end;
	
	imprimircadastro();

end.