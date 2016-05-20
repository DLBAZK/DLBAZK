{*******************************************************}
{                                                       }
{       病案首页质控详细记录中间业务类                      }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

unit UVsZkDetail;

interface
   uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;

   type
     TVsZkDetail=class(TVsMidStand)
      Public
      Constructor Create;Override;
     end;
implementation

{ TVsZkDetail }

constructor TVsZkDetail.Create;
begin
  inherited;
  SelectSql := '';

end;

initialization
  Classes.RegisterClass(TVsZkDetail);
finalization
  Classes.UnRegisterClass(TVsZkDetail);
end.
