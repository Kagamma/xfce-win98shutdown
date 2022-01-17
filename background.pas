unit background;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TForm2 }

  TForm2 = class(TForm)
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

uses
  main;

{ TForm2 }

procedure TForm2.FormClick(Sender: TObject);
begin
  Form1.SetFocus;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Color := $0;
  AlphaBlend := true;
  AlphaBlendValue := $B0;
end;

end.

