unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnLimpar: TButton;
    convC: TButton;
    convK: TButton;
    convF: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtoriginal: TEdit;
    txtconvertido: TEdit;
    quantC: TEdit;
    quantK: TEdit;
    quantF: TEdit;
    procedure btnLimparClick(Sender: TObject);
    procedure convCClick(Sender: TObject);
    procedure convFClick(Sender: TObject);
    procedure convKClick(Sender: TObject);
    procedure txtoriginalExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  temp,num:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.txtoriginalExit(Sender: TObject);
begin
  temp:= txtoriginal.Text;
end;

procedure TForm1.convCClick(Sender: TObject);
var
i,contC,contF,contK:integer;
texto:string;
valor:real;
begin
 contK:=0;
 contC:=0;
 contF:=0;
 for i:=1 to length(temp) do
 begin
        //Consertar as linhas para parar de aparecer 0 na frente dos números
 	if (temp[i]='0') or (temp[i]='1') or (temp[i]='2') or (temp[i]='3') or (temp[i]='4') or (temp[i]='5') or (temp[i]='6') or (temp[i]='7') or (temp[i]='8') or (temp[i]='9') then
 	begin
 	num:= num + temp[i];
        end
 	   else	if (temp[i]='K') then
 		begin
 		valor:= StrToInt(num)-273.15;
 		contK:=contK+1;
 		texto:= texto + Format('%.2f',[valor]) + 'C';
                num:='0';
 		end
 		else if (temp[i]='F') then
 			begin
 			valor:=((StrToInt(num)-32)/9)*5;
 			contF:= contF+1;
 			texto:= texto + Format('%.2f',[valor]) + 'C';
                        num:='0';
 			end
 	                else if (temp[i]='C') then
 	                     begin
                             valor:=StrToInt(num);
                             num:=FloatToStr(valor);
 	                     contC:= contC+1;
                             texto:= texto + num + 'C';
                             num:='0';
 	                     end
                             else texto:= texto + temp[i];
 end;
txtconvertido.Text:=texto;
quantC.Text:=IntToStr(contC);
quantK.Text:=IntToStr(contK);
quantF.Text:=IntToStr(contF);
end;

procedure TForm1.convFClick(Sender: TObject);
var
i,contC,contF,contK:integer;
texto:string;
valor:real;
begin
 contK:=0;
 contC:=0;
 contF:=0;
 for i:=1 to length(temp) do
 begin
 	if (temp[i]='0') or (temp[i]='1') or (temp[i]='2') or (temp[i]='3') or (temp[i]='4') or (temp[i]='5') or (temp[i]='6') or (temp[i]='7') or (temp[i]='8') or (temp[i]='9') then
 	begin
 	num:= num + temp[i];
        end
 	   else	if (temp[i]='C') then
 		begin
 		valor:=(StrToInt(num)*1.8)+32;
 		contC:=contC+1;
 		texto:= texto + Format('%.2f',[valor]) + 'F';
                num:='0';
 		end
 		else if (temp[i]='K') then
 			begin
 			valor:=1.8*(StrToInt(num)-273)+31.73;
 			contK:= contK+1;
 			texto:= texto + Format('%.2f',[valor]) + 'F';
                        num:='0';
 			end
 	                else if (temp[i]='F') then
 	                     begin
                             valor:=StrToInt(num);
                             num:=FloatToStr(valor);
                             contF:= contF+1;
                             texto:= texto + num + 'F';
                             num:='0';
 	                     end
                             else texto:= texto + temp[i];
 end;
txtconvertido.Text:=texto;
quantC.Text:=IntToStr(contC);
quantK.Text:=IntToStr(contK);
quantF.Text:=IntToStr(contF);
end;

procedure TForm1.convKClick(Sender: TObject);
var
i,contC,contF,contK:integer;
texto:string;
valor:real;
begin
 contK:=0;
 contC:=0;
 contF:=0;
 for i:=1 to length(temp) do
 begin
 	if (temp[i]='0') or (temp[i]='1') or (temp[i]='2') or (temp[i]='3') or (temp[i]='4') or (temp[i]='5') or (temp[i]='6') or (temp[i]='7') or (temp[i]='8') or (temp[i]='9') then
 	begin
 	num:= num + temp[i];
        end
 	   else	if (temp[i]='C') then
 		begin
 		valor:= StrToInt(num)+273.15;
 		contC:=contC+1;
 		texto:= texto + Format('%.2f',[valor]) + 'K';
                num:='0';
 		end
 		else if (temp[i]='F') then
 			begin
 			valor:=((StrToInt(num)-32)/1.8)+273.15;
 			contF:= contF+1;
 			texto:= texto + Format('%.2f',[valor]) + 'K';
                        num:='0';
 			end
 	                else if (temp[i]='K') then
 	                     begin
                             valor:=StrToInt(num);
                             num:=FloatToStr(valor);
 	                     contK:= contK+1;
                             texto:= texto + num + 'K';
                             num:='0';
 	                     end
                             else texto:= texto + temp[i];
 end;
txtconvertido.Text:=texto;
quantC.Text:=IntToStr(contC);
quantK.Text:=IntToStr(contK);
quantF.Text:=IntToStr(contF);

end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
 txtoriginal.Text:= '';
 txtconvertido.Text:= '';
 quantF.Text:= '';
 quantC.Text:= '';
 quantK.Text:= '';
end;


end.
