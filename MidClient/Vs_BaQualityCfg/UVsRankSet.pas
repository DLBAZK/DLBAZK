{*******************************************************}
{                                                       }
{       病案质控等级设置中间业务类                          }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

unit UVsRankSet;

interface
uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;

  type
    TVsRankSet=class(TVsMidStand)
    Public
      Constructor Create;Override;
    end;



implementation

{ TVsBaSyZk }

constructor TVsRankSet.Create;
begin
  inherited;
  SelectSql := '';
end;

initialization
  Classes.RegisterClass(TVsRankSet);
finalization
  classes.UnRegisterClass(TVsRankSet);

end.
