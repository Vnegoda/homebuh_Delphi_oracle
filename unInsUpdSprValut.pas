unit unInsUpdSprValut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Data.DB, MemDS, DBAccess, Ora;

type
  TfmInsUpdSprValut = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxedAbbr: TcxTextEdit;
    cxedShortName: TcxTextEdit;
    cxedName: TcxTextEdit;
    bnCancel: TcxButton;
    bnSave: TcxButton;
    oraQFill: TOraQuery;
  private
    { Private declarations }
  public
    id : integer;
    { Public declarations }
    procedure fillform;

  end;

var
  fmInsUpdSprValut: TfmInsUpdSprValut;

implementation

{$R *.dfm}

uses unDM;

procedure TfmInsUpdSprValut.fillform;
begin
  self.cxedAbbr.Clear;
  self.cxedShortName.Clear;
  self.cxedName.Clear;
  if self.id<>0 then
    begin
      //fill form fo id record
      if   not dmOra.OraSession.Connected then
      begin
           dmOra.OraSession.Connected:=true;
      end;
      oraQFill.SQL.Clear;
      oraQFill.SQL.Text:='select * from hbuh.spr_valut where id=:id';
      oraQFill.ParamByName('id').Value=self.id;
      oraQFill.Active:=true;

      cxedAbbr.Text:= oraQFill.FieldByName('cod').AsString;
      cxedShortName.Text:= oraQFill.FieldByName('short_name').AsString;
      cxedName.Text:= oraQFill.FieldByName('name').AsString;

    end;
end;

end.