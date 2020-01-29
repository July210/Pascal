program Questao3(input{teclado},output{video});

	function coluna(numcol,totalcol,n{e/s}:integer);
	if numcol <= totalcol then 
	begin
	write (output,numcol*n);
	coluna(numcol+1,totalcol,n);
	end;

	function linha(numlin,totalin,n{e/s}:integer);
	if numlin <= totalin then
	begin
	coluna(1,totalin+1-numlin,n);
	writeln(output);
	linha(numlin+1,totalin,n+1);
	end;
	
var
numlin,totalin,n,totalcol,numcol:intenger;	
	
begin
writeln(output,'Informe o valor de n:');
readln(input,n);
totalin:= n;
numlin:= 1;
linha(numlin,totalin,n);
end.