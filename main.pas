unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    btCancel: TButton;
    btHelp: TButton;
    Image1: TImage;
    Label1: TLabel;
    rbShutdown: TRadioButton;
    rbRestart: TRadioButton;
    rbRestartInDOS: TRadioButton;
    procedure btCancelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

uses
  Process, background;

{ TForm1 }

procedure TForm1.btCancelClick(Sender: TObject);
begin
  Halt(0);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  S: String;
begin
  if rbRestart.Checked then
  begin
    RunCommand('/bin/xfce4-session-logout', ['--reboot', '--fast'], S);
    Halt(0);
  end else
  if rbShutdown.Checked then
  begin
    RunCommand('/bin/xfce4-session-logout', ['--halt', '--fast'], S);
    Halt(0);
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form2.Show;
end;

end.

