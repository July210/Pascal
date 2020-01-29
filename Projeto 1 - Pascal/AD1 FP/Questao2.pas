program questao2(input{teclado},output{video});

   procedure maxdistancia(x,y{e}:integer; var dis{s}:real; var max,may{s}:integer; var maxd{s}:real);
   var
   a,b:integer;
   begin
   a:=0;
   b:=0;
    dis:=sqrt((x-a)*(x-a) + (y-b)*(y-b));
    if dis>=maxd then
     begin
      maxd:=dis;
      max:=x;
      may:=y;
     end;
	end;

   var
    x,y,max,may:integer;
    dis,maxd:real;
  begin
   max:=0;
   may:=0;
   maxd:=0;
   dis:=0;
   writeln(output,'Digite o valor dos pontos (x,y): ');
   readln(input,x,y);
   while (x<>0) or (y<>0) do
    begin
     maxdistancia(x,y,dis,max,may,maxd);
     readln(input,x,y);
    end;
   writeln(output,'O maior par e : (',max,',',may,')');
  end.
