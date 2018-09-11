program Project1;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {Form1},
  Controller.Principal in 'Controller.Principal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
