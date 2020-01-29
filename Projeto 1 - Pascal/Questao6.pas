program Questao6(input{teclado},output{video});

var
Tstr:string;

function convint(x:char):integer;
var
numconvert:integer;
begin
numconvert:= Ord(x)-48;
convint:=numconvert;
end;

function digito(x:Char):boolean;
begin
	if (Ord(x)>=48) and (Ord(x)<=57) then
	digito:=true
	else
	digito:=false;
end;

function testisbn(Tstr:string):boolean;
var
i,j,soma,valordiv,num:integer;

begin
soma:=0;
testisbn:=true;
	if length(Tstr)<>11 then
	testisbn:=false
	else
	i:=1;
	while i<=11 do
	begin
		if i=10 then
			if Tstr[i]<>'-' then
			begin
			testisbn:=false;
			i:=12;
			end
		else
			if (not digito(Tstr[i])) then
			testisbn:=false;
			i:=12;
			
	end;
	if (testisbn=true) then
		for i:=1 to 9 do
		begin
		num:=convint(Tstr[i]);
		soma:= (num) + soma;
		end;
	valordiv:= soma mod 10;
	if valordiv=convint(Tstr[11]) then
	testisbn:=true
	else
	testisbn:=false;
end;	
	
Begin
	readln(input,Tstr);
	while length(Tstr)<>0 do
	begin	
		if testisbn(Tstr) then
		writeln(output,'Essa e uma string ISBN')
		else 
		writeln (output,'Essa nao e uma string ISBN');
	readln(input,Tstr);
	end;

End.