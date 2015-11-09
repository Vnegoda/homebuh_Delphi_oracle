unit unSprValut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, MemDS, DBAccess, Ora;

type
  TfmSprValut = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    actIns: TAction;
    actEDit: TAction;
    actDel: TAction;
    actREfresh: TAction;
    cxGrid1: TcxGrid;
    oqSprValut: TOraQuery;
    oradssprvalut: TOraDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1COD: TcxGridDBColumn;
    cxGrid1DBTableView1SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    procedure actREfreshExecute(Sender: TObject);
  private
    { Private declarations }

  public
    procedure fillForm;
    { Public declarations }
  end;

var
  fmSprValut: TfmSprValut;

implementation

{$R *.dfm}

uses unDM;

{ TfmSprValut }

procedure TfmSprValut.actREfreshExecute(Sender: TObject);
begin
  self.fillForm;
end;

procedure TfmSprValut.fillForm;
begin
  oqSprValut.SQL.Clear;
   if not dmOra.OraSession.Connected then
     dmOra.OraSession.Connected := true;
   self.oqSprValut.SQL.Text:='select * from hbuh.v_spr_valut';
   self.oqSprValut.Active:=true;
   self.Refresh;

end;

end.
