unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Controller.Principal;

type
  TForm1 = class(TForm)
    pb1: TProgressBar;
    Memo1: TMemo;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure evMensagem(Msg : string);
    procedure evProgresso(Posicao : Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btn1Click(Sender: TObject);
var
  Control : tController;
begin
   Control := tcontroller.create;
   try
     Control.evMsg := evMensagem;
     Control.evProgresso := evProgresso;
     Control.AcionarEventos;
   finally
     Control.free;
   end;


end;

procedure TForm1.evMensagem(Msg: string);
begin
    Memo1.Lines.Add(Msg);
end;

procedure TForm1.evProgresso(Posicao: Integer);
begin
    pb1.Position := Posicao;
end;

end.
