program Questao5(input{teclado},output{video});

function convertemint(x:Char):integer;
var
num:integer;
begin
num:=Ord(x)-48;
convertemint:=num;
end;

function digito(x:Char):boolean;
begin
	if (Ord(x)>=48) and (Ord(x)<=57) then
	digito:=true
	else
	digito:=false;
end;

function verifvogal(x:Char):boolean;
begin
	if (x='a') or (x='e') or (x='i') or (x='o') or (x='u') or (x='A') or (x='E') or (x='I') or (x='O') or (x='U') then
	verifvogal:=true
	else
	verifvogal:=false;

end;
function quantstrpalin(x{e}:string):boolean;
var
i:integer;
begin
quantstrpalin := true;
i:=1;
	while i<=(length(x)div 2) do
	begin
		if x[i]<>x[length(x)+1-i] then
		begin
		quantstrpalin:=false;
		i:=length(x);
		end;
		i:=i+1;
	end;

end;

var
numstr,strpalin,somadig,quantdig,quantvog,i:integer;
str:string;

begin
writeln(output,'Digite uma string: ');
numstr:=0;
strpalin:=0;
quantdig:=0;
quantvog:=0;
somadig:=0;
readln(input,str);
	while (str<>'') do
	begin
	numstr:=numstr+1;
    if quantstrpalin(str) then
		strpalin:=strpalin+1;
	for i:=1 to length(str) do
	begin
		if digito(str[i]) then
		begin
		quantdig:= quantdig +1;
		somadig:= somadig + convertemint(str[i]);
		end
		else
		if verifvogal(str[i]) then
		quantvog:= quantvog+1;
	end;
	readln(input,str);
	end;
writeln (output,'Quantidade de strings: ',numstr);
writeln (output,'Quantidade de strings palindromes: ',strpalin);
writeln (output,'Quantidade de digitos: ', quantdig); 
writeln (output,'Soma de todos os digitos: ', somadig);
writeln (output,'Quantidade de vogais: ', quantvog);
end.
