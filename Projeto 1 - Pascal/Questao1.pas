program Ad1(input{teclado},output{video});

procedure imprimir (n{e}:integer);
var
 i,j,k:integer;
begin
  for i:=1 to n do
   begin
   k:=n+i-1;
    for j:=1 to n+1-i do
     begin
      write(output,k*j:4,' ');
       end;
      writeln(output)
     end;
    end;

var
n:integer;

begin
 write(output, 'Informe o valor de n:');
 readln(input, n);
 if n < 1 then
        writeln(output, 'O numero deve ser maior ou igual a 1')
 else
 imprimir(n);
end.
