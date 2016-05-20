{*******************************************************}
{                                                       }
{       病案首页质控中间业务类                          }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

unit UVsBaSyZk;

interface
uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;

  type
    TVsBaSyZk=class(TVsMidStand)
    Public
      Constructor Create;Override;
    end;



implementation

{ TVsBaSyZk }

constructor TVsBaSyZk.Create;
begin
  inherited;
  SelectSql := '';
end;

initialization
  Classes.RegisterClass(TVsBaSyZk);
finalization
  classes.UnRegisterClass(TVsBaSyZk);

end.
