unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnnovo: TButton;
    btnprocura: TButton;
    btnsalvar: TButton;
    btnaltera: TButton;
    btndelete: TButton;
    btnprox: TButton;
    btnanterior: TButton;
    cargos: TComboBox;
    Label10: TLabel;
    Label9: TLabel;
    txttel: TMemo;
    rcasa: TRadioButton;
    rsolt: TRadioButton;
    txtcartao: TEdit;
    Label8: TLabel;
    txtend: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    txtempresa: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    txtemail: TEdit;
    Label1: TLabel;
    txtnome: TEdit;
    GroupBox1: TGroupBox;
    procedure btnnovoClick(Sender: TObject);
    procedure cargosChange(Sender: TObject);
    procedure txttelChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.btnnovoClick(Sender: TObject);
begin
   txtnome.ReadOnly:=False;
   txtend.ReadOnly:=False;
   txttel.ReadOnly:=False;
   txtempresa.ReadOnly:=False;
   txtemail.ReadOnly:=False;
end;


end.

