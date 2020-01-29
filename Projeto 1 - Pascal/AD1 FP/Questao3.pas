program Questao3(input{teclado},output{video});

	procedure coluna(numcol,totalcol,n{e/s}:integer);
	begin
		if numcol <= totalcol then 
		begin
		write (output,numcol*n:4);
		coluna(numcol+1,totalcol,n);
		end;
	end;
	
	procedure linha(numlin,totalin,n{e/s}:integer);
	begin	
		if numlin <= totalin then
		begin
		coluna(1,totalin+1-numlin,n);
		writeln(output);
		linha(numlin+1,totalin,n+1);
		end;
	end;
	
var
numlin,totalin,n,totalcol,numcol:integer;	
	
begin
writeln(output,'Informe o valor de n:');
readln(input,n);
totalin:= n;
numlin:= 1;
linha(numlin,totalin,n);
end.