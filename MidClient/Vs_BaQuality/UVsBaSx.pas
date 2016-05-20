{*******************************************************}
{                                                       }
{       病案筛选中间业务类                              }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

 unit UVsBaSx;

interface
    uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;
   type
     TVsBaSx=class(TVsMidStand)
     public
       constructor Create;Override;
     end;
   { TVsBaSx }



implementation
 constructor TVsBaSx.Create;
begin
  inherited;
  SelectSql := '';
end;


initialization
  Classes.RegisterClass(TVsBaSx);
finalization
  Classes.UnRegisterClass(TVsBaSx);

end.
