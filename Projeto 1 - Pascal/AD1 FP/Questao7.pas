program Questao7(input{teclado},output{video});

var
str:string;
repvalor,quantdig,quantvog,i,voga,voge,vogi,vogo,vogu,numzero,numum,numdois,numtres,numqua,numcin,numseis,numsete,numoi,numnov:integer;


function convertemint(x:Char):integer;
var
num:integer;
begin
num:=Ord(x)-48;
convertemint:=num;
end;

function verifvogal(x:Char):boolean;
begin
	if (x='a') or (x='e') or (x='i') or (x='o') or (x='u') or (x='A') or (x='E') or (x='I') or (x='O') or (x='U') then
	verifvogal:=true
	else
	verifvogal:=false;
end;

function digito(x:Char):boolean;
begin
	if (Ord(x)>=48) and (Ord(x)<=57) then
	digito:=true
	else
	digito:=false;
end;

procedure maisocorrido(voga,voge,vogi,vogo,vogu{e/s}:integer);

type
Telem = 1..5;
Tvetor= array [Telem] of integer;

var
vet:Tvetor;
i,repvalor:integer;


begin
vet[1]:=voga;
vet[2]:=voge;
vet[3]:=vogi;
vet[4]:=vogo;
vet[5]:=vogu;
repvalor:=0;

	for i:=1 to 5 do
	begin
		if vet[i] > repvalor then
		repvalor:=vet[i];
	end;
write(output,'Vogal(ais) que mais ocorreu(ram): ');
	for i:=1 to 5 do
	begin
		if vet[i]=repvalor then
			if i=1 then
			write(output,'a ')
			else
				if i=2 then
				write(output,'e ')
				else
					if i=3 then
					write(output,'i ')
					else
						if i=4 then
						write(output,'o ')
						else
							if i=5 then
							write(output,'u ');
	end;

end;


begin
quantdig:=0;
quantvog:=0;
voga:=0;
voge:=0;
vogi:=0;
vogo:=0;
vogu:=0;
numzero:=0;
numum:=0;
numdois:=0;
numtres:=0;
numqua:=0;
numcin:=0;
numseis:=0;
numsete:=0;
numoi:=0;
numnov:=0;
writeln('Digite uma string: ');
readln(input,str);
while (str<>'tchau') do
begin
	for i:=1 to length(str) do
	begin
		if digito(str[i]) then
		begin
		if  str[i]='0' then
		numzero:=numzero+1
		else
			if str[i]='1' then
			numum:=numum+1
			else
				if str[i]='2' then
				numdois:=numdois+1
				else
					if str[i]='3' then
					numtres:=numtres+1
					else
						if str[i]='4' then
						numqua:=numqua+1
						else
							if str[i]='5' then
							numcin:=numcin+1
							else
								if str[i]='6' then
								numseis:=numseis+1
								else
									if str[i]='7' then
									numsete:=numsete+1
									else
										if str[i]='8' then
										numoi:=numoi+1
										else
											if str[i]='9' then
											numnov:=numnov+1;

		end
		else
		if verifvogal(str[i]) then
		begin
		if str[i]='a' then
		voga:=voga+1
		else
			if Ord(str[i])=Ord('e') or Ord('E') then
			voge:=voge+1
			else
				if Ord(str[i])=Ord('i') or Ord('I') then
				vogi:=vogi+1
				else
					if Ord(str[i])=Ord('o') or Ord('O') then
					vogo:=vogo+1
					else
						if Ord(str[i])=Ord('u') or Ord('U') then
						vogu:=vogu+1;
		end;
	end;
readln(input,str);
end;
writeln(output,'Quantidade de vezes que cada vogal foi digitada');
writeln(output,'A= ', voga);
writeln(output,'E= ', voge);
writeln(output,'I= ', vogi);
writeln(output,'O= ', vogo);
writeln(output,'U= ', vogu);
writeln('Quantidade de 0=', numzero);
writeln('Quantidade de 1=', numum);
writeln('Quantidade de 2=', numdois);
writeln('Quantidade de 3=', numtres);
writeln('Quantidade de 4=', numqua);
writeln('Quantidade de 5=', numcin);
writeln('Quantidade de 6=', numseis);
writeln('Quantidade de 7=', numsete);
writeln('Quantidade de 8=', numoi);
writeln('Quantidade de 9=', numnov);
maisocorrido(voga,voge,vogi,vogo,vogu);
end.
