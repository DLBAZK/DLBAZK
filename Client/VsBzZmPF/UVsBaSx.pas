{*******************************************************}
{                                                       }
{       病案筛选                                        }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

unit UVsBaSx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmSuiDBForm, AdvGlowButton, SUIButton, StdCtrls, SUIComboBox,
  SUIEdit, ComCtrls, AdvDateTimePicker, EllipsLabel, AdvGroupBox, DB, ActnList,
  DBClient, UDlClientDataset, DosMove, AdvPanel, AdvAppStyler, AdvToolBar,
  AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ExtCtrls,
  DBGridEhGrouping, AdvSplitter, GridsEh, DBGridEh, TFlatButtonUnit,
  TFlatPanelUnit, AdvEdit, AdvOfficeButtons, UDLAdvCheckBox;

type
  TFrmBaSx = class(TFrmSuiDBForm)
    AdvPanel2: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    advDtpks: TAdvDateTimePicker;
    advDtpjs: TAdvDateTimePicker;
    suiedtstart: TsuiEdit;
    suiedtEnd: TsuiEdit;
    AdvGlowButton1: TAdvGlowButton;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    suichkCheckAll: TsuiCheckBox;
    suichkinverseAll: TsuiCheckBox;
    FlatbtnAllCancle: TFlatButton;
    dbgrdhDest: TDBGridEh;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    suichkAll: TsuiCheckBox;
    suichkinverse: TsuiCheckBox;
    FlatbtnCancle: TFlatButton;
    dbgrdhSource: TDBGridEh;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    FlatPanel7: TFlatPanel;
    suiCheckBox7: TsuiCheckBox;
    suiCheckBox8: TsuiCheckBox;
    FlatButton3: TFlatButton;
    DBGridEh1: TDBGridEh;
    advspltr1: TAdvSplitter;
    advspltr2: TAdvSplitter;
    FlatbtnAllRight: TFlatButton;
    FlatbtnRight: TFlatButton;
    FlatbtnLeft: TFlatButton;
    FlatbtnAllLeft: TFlatButton;
    AdvedtCH0A23: TAdvEdit;
    dladvChkCH0A23: TDLAdvCheckBox;
    dladvChkCH0A27: TDLAdvCheckBox;
    dladvChkZyts: TDLAdvCheckBox;
    advckbDeath: TAdvOfficeCheckBox;
    advckbOPS: TAdvOfficeCheckBox;
    dsDest: TDataSource;
    clientdtDest: TClientDataSet;
    clientdtSource: TClientDataSet;
    clientdtSourcechk: TBooleanField;
    clientdtSourceCH0A00: TStringField;
    clientdtSourceCH0A02: TStringField;
    clientdtSourceCH0A03: TStringField;
    clientdtSourceCH0A23: TStringField;
    clientdtSourceCH0A27: TStringField;
    clientdtSourceCH0A33: TStringField;
    clientdtDestchk: TBooleanField;
    clientdtDestCH0A00: TStringField;
    clientdtDestCH0A02: TStringField;
    clientdtDestCH0A03: TStringField;
    clientdtDestCH0A23: TStringField;
    clientdtDestCH0A27: TStringField;
    clientdtDestCH0A33: TStringField;
    clientdtDestCh0A01: TStringField;
    clientdtDestChYear: TStringField;
    clientdtSourceCh0A01: TStringField;
    clientdtSourceChYear: TStringField;
    FlatPanel8: TFlatPanel;
    AdvbtnSave: TAdvGlowButton;
    procedure suiedtstartKeyPress(Sender: TObject; var Key: Char);
    procedure FlatbtnAllRightClick(Sender: TObject);
    procedure AdvedtCH0A23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvedtCH0A23Enter(Sender: TObject);
    procedure AdvedtCH0A23Exit(Sender: TObject);
    procedure suichkAllClick(Sender: TObject);
    procedure FlatbtnCancleClick(Sender: TObject);
    procedure FlatbtnAllCancleClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure suiedtstartExit(Sender: TObject);
    procedure AdvbtnSaveClick(Sender: TObject);
  private
    { Private declarations }
    /// <summary>
    /// 出院科别代码
    /// </summary>
    FCh0A23:string;
    constructor Create(Aower:TComponent);override;
    /// <summary>
    /// 移动数据
    /// </summary>
    /// <param name="CdsS">源clientdataset</param>
    /// <param name="CdsD">目的clientdataset</param>
    procedure MoveData(CdsS,CdsD:TClientDataSet);
    /// <summary>
    /// 选择操作
    /// </summary>
    /// <param name="dt">数据集控件</param>
    /// <param name="chkState">选择状态</param>
    /// <param name="bz">true ： 全部；false ：部分</param>
    procedure SetDataCheck(dt:TClientDataSet;const chkState:Boolean;const bz:Boolean);
  public
    { Public declarations }
  end;

var
  FrmBaSx: TFrmBaSx;

implementation
  uses
    UGFun,UGVar,UMidProxy,UVsMidClassList;

{$R *.dfm}

procedure TFrmBaSx.AdvbtnSaveClick(Sender: TObject);
begin
  inherited;
  StartWaitWindow('正在保存...');
  try
    DBGridEhSave(dbgrdhDest);
  finally
    EndWaitWindow;
  end;
end;

procedure TFrmBaSx.AdvedtCH0A23Enter(Sender: TObject);
begin
  inherited;
  SetSbSimpleText('请按空格键获取代码帮助');
end;

procedure TFrmBaSx.AdvedtCH0A23Exit(Sender: TObject);
begin
  inherited;
  SetSbSimpleText('');
end;

procedure TFrmBaSx.AdvedtCH0A23KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    FCH0A23:=ShowDM(sdm_ZyKs, AdvedtCH0A23);
end;

procedure TFrmBaSx.AdvGlowButton1Click(Sender: TObject);
  const
    ssql='select CH0A29,CH0A23,CH0A33,CH0A27,CH0A03,CH0A02,CH0A00,CH0A01,CHYear from vsCH0A as A where 1==1';
    function WhereSql:string;
      var
        sday,eday:Integer;
    begin

      if (not dladvChkCH0A27.Checked) and (not dladvChkCH0A23.Checked)
        and (not dladvChkZyts.Checked) and (not advckbDeath.Checked)
        and ( not advckbOPS.Checked)then
      begin
        Result := '';
        Exit;
      end;
      //出院日期
      if dladvChkCH0A27.Checked then
      begin
      //自动判断日期顺序
        if advDtpks.Date > advDtpjs.Date then
          Result := Result +format(' and CH0A27 >= %s and CH0A27 <= %s',
              [QuotedStr(DateToStr(advDtpjs.Date)),QuotedStr(DateToStr(advDtpks.Date))])
        else
          Result := Result +format(' and CH0A27 >= %s and CH0A27 <= %s',
                  [QuotedStr(DateToStr(advDtpks.Date)),QuotedStr(DateToStr(advDtpjs.Date))])
      end;

      // 出院科室
      if dladvChkCH0A23.Checked then
      begin
        Result := Result + Format(' and CH0A23 = %s ',[QuotedStr(AdvedtCH0A23.Text)]);
      end;

      // 住院天数
      if dladvChkZyts.Checked then
      begin
        if suiedtstart.Text ='' then
        begin
          sday := 0;
        end
        else
          sday := StrToInt(suiedtstart.Text) ;

        if suiedtEnd.Text = '' then
        begin
          eday :=0;
        end
        else
          eday := StrToInt(suiedtEnd.Text);

        Result := Result + Format(' and CH0A29 >= %d and CH0A29 <= %d ',[sday,eday]);
        
      end;

      //死亡  转归等于4
      if advckbDeath.Checked then
        Result :=Result+' and CH0A41 = ^4^';
      
      //手术
      Result :=Result + ' and exists(select * from VsCh0E B where Ch0E01=Ch0A01 and Ch0EE1=1 and B.ChYear=A.CHYear)';
    end;
var
  fsql:string;
  clientdttmp:TClientDataSet;
begin
  inherited;
  StartWaitWindow('正在筛选...');
  try
    clientdttmp := TClientDataSet.Create(nil);
    //筛选病案
    fsql := ssql+wheresql;
    TMidProxy.SqlOpen(fsql,clientdttmp);
    if clientdttmp.Active then
    begin
      //复制数据
      with clientdttmp do
      begin
        Open;
        DisableControls;
        First;
        while not eof do
        begin
          MoveData(clientdttmp,clientdtSource);
          First;
        end;
        EnableControls;
      end;
    end;
  finally
    EndWaitWindow;
  end;
end;

constructor TFrmBaSx.Create(Aower: TComponent);
begin
  inherited Create(Aower,EuVsBaSx,'');

end;

procedure TFrmBaSx.FlatbtnAllCancleClick(Sender: TObject);
begin
  inherited;
  suichkCheckAll.Checked :=False;
  suichkinverseAll.Checked :=False;
  SetDataCheck(clientdtDest,False,True);
end;

procedure TFrmBaSx.FlatbtnAllRightClick(Sender: TObject);
var
  tag:Integer;
  MyClass: TDlClientDataset;
  //左移或右移
  procedure LeftOrRight(source,dest:TClientDataSet);
  begin
    with source do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('chk').AsBoolean then
        begin
          MoveData(source,dest);
        end;
        First;
      end;
      EnableControls;
    end;
  end;
begin
  inherited;
  if not clientdtSource.Active then  Exit;
  if clientdtSource.RecordCount =0 then Exit;
  if not clientdtDest.Active then Exit;
  if clientdtDest.RecordCount = 0 then Exit;
  
  
  tag := (Sender as TFlatButton).Tag;
  case tag of
     0:   //全部右移
     begin
       with clientdtSource do
       begin
         DisableControls;
         try
           First;
           while not Eof do
           begin
             MoveData(clientdtSource,clientdtDest);
             First;
           end;
         finally
           EnableControls;
         end;

       end;
     end;
     1: //选中右移
     begin
       LeftOrRight(clientdtSource,clientdtDest);
     end;
     2:  //选中左移
     begin
       LeftOrRight(clientdtDest,clientdtSource);
     end;
     3:  //全部左移
     begin
       with clientdtDest do
       begin
         DisableControls;
         try
           First;
           while not Eof do
           begin
             MoveData(clientdtDest,clientdtSource);
             First;
           end;
         finally
           EnableControls;
         end;

       end;
     end;
  end;
end;



procedure TFrmBaSx.FlatbtnCancleClick(Sender: TObject);
begin
  inherited;
  suichkAll.Checked :=False;
  suichkinverse.Checked := False;
  SetDataCheck(clientdtSource,False,True);
end;

procedure TFrmBaSx.MoveData(CdsS, CdsD: TClientDataSet);
var
  Bah,BaYear: string;
begin
  inherited;
  if Cdss.IsEmpty then Exit;

  with CdsS do begin
    if Eof then Exit;
    Bah := FieldByName('Ch0A01').AsString;
    BaYear := FieldByName('ChYear').AsString;
    CdsD.IndexFieldNames :=  'ChYear;Ch0A01' ;
    if not  CdsD.FindKey([BaYear,Bah]) then    
    begin
      CdsD.Append;
      CdsD.FieldByName('chk').AsBoolean :=False;
      CdsD.FieldByName('ChYear').AsString := BaYear;    //年度
      CdsD.FieldByName('Ch0A00').AsString := FieldByName('Ch0A00').AsString;       //住院号
      CdsD.FieldByName('CH0A02').AsString := FieldByName('CH0A02').AsString;  //病人姓名
      CdsD.FieldByName('CH0A03').AsString := FieldByName('CH0A03').AsString;  //性别
      CdsD.FieldByName('CH0A01').AsString := Bah;  //病案号
      CdsD.FieldByName('CH0A23').AsString := FieldByName('CH0A23').AsString;  //出院科别
      CdsD.FieldByName('CH0A29').AsInteger := FieldByName('CH0A29').AsInteger; //住院天数
      CdsD.FieldByName('CH0A27').AsString := FieldByName('CH0A27').AsString;  //出院日期
      CdsD.FieldByName('CH0A33').AsString := FieldByName('CH0A33').AsString;  //主管医师
      CdsD.Post;
      delete;
    end;
  end;

end;

procedure TFrmBaSx.SetDataCheck(dt: TClientDataSet; const chkState,
  bz: Boolean);
begin
   if (not dt.Active) and dt.IsEmpty then exit;
   with dt do
   begin
     DisableControls;
     Open;
     First;
     while not Eof do
     begin
       Edit;
       if bz then   //全部操作
       begin
         FieldByName('chk').AsBoolean :=chkState;
       end
       else
       begin  //部分操作 反选
         FieldByName('chk').AsBoolean :=not chkState;
       end;
       Post;
       Next;
     end;
     EnableControls;
   end;
end;

procedure TFrmBaSx.suichkAllClick(Sender: TObject);
 var
   CTag:Integer;
   chktmp:TsuiCheckBox;
begin
  inherited;
  if Sender is TsuiCheckBox then
  begin
    with Sender as TsuiCheckBox do
    begin
      CTag := Tag;
      case CTag of
         101: //左边全选
         begin
           SetDataCheck(clientdtSource,True,True);
           suichkinverse.Checked :=False;
         end;
         102: //左边反选
         begin
           SetDataCheck(clientdtSource,True,False);
           suichkAll.Checked :=False;
         end;
         201:  //右边全选
         begin
           SetDataCheck(clientdtDest,True,True);
           suichkinverseAll.Checked :=false;
         end;
         202: //右边反选
         begin
           SetDataCheck(clientdtDest,True,False);
           suichkCheckAll.Checked :=False;
         end;
      end;
    end;
  end;
end;

procedure TFrmBaSx.suiedtstartExit(Sender: TObject);
var
 sday,eday:Integer;
begin
  inherited;
  if Trim(suiedtstart.Text) <> '' then
  begin
    sday :=StrToInt(suiedtstart.Text);
    if Trim(suiedtEnd.Text) <>'' then
    begin
      eday := StrToInt(suiedtEnd.Text) ;
      if sday > eday then
      begin
        ShowMsgSure('天数范围有误!');
      end;
    end;
  end;


  
end;

procedure TFrmBaSx.suiedtstartKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key  in ['0'..'9',#8,#13]) then
    Key := #0;
end;

initialization
  Classes.RegisterClass(TFrmBaSx);
finalization
  Classes.UnRegisterClass(TFrmBaSx);

end.
