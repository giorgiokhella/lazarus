unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

var dado, magico, tiri: integer;
begin
 Randomize;
 magico := StrToInt(Edit1.Text);
 Memo1.Clear;
 tiri := 0;
 dado := 0;
 while dado <> magico do
 begin
 dado := Random(6) + 1;
 tiri := tiri + 1;
 Memo1.Lines.Add('Tiro ' + IntToStr(tiri) + ': ' + IntToStr(dado));
 end;
 Memo1.Lines.Add('Uscito il ' + IntToStr(magico) + ' dopo ' + IntToStr(tiri) + ' tiri!');
end;

end.

