unit UFrmZkDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmSuiDBListForm, DBGridEhGrouping, PrnDbgeh, DB, ActnList,
  DBClient, UDlClientDataset, DosMove, AdvPanel, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, GridsEh,
  DBGridEh, ExtCtrls, AdvGlowButton;

type
  TFrmZkDetail = class(TFrmSuiDBListForm)
  private
    { Private declarations }
  public
    { Public declarations }
    //²¡°¸ºÅ
    StrBah:string;
    constructor Create(Aowner:TComponent);override;
  end;

var
  FrmZkDetail: TFrmZkDetail;

implementation
  uses UVsMidClassList;
{$R *.dfm}

{ TFrmZkDetail }

constructor TFrmZkDetail.Create(Aowner: TComponent);
var
  selectsql:string;
begin

  selectsql :=Format('select * from VsBAsyzk where CH0A01 =%s',[QuotedStr(StrBah)]);
  inherited Create(Aowner,EuVsZkDetail,selectsql);

end;

end.
