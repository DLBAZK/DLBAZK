{*******************************************************}
{                                                       }
{       病案终末评价中间业务类                          }
{                                                       }
{       版权所有 (C) 2016 武汉雕龙软件医疗数据服务      }
{                                                       }
{*******************************************************}

unit UVsBaZmPj;

interface
   uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;
   
  type
    TVsBaZmPj=class(TVsMidStand)
      Public
      Constructor Create;Override;
    end;
implementation

{ TVsBaZmPj }

constructor TVsBaZmPj.Create;
begin
  inherited;
  SelectSql :='';
end;

initialization
  Classes.RegisterClass(TVsBaZmPj);
finalization
  Classes.UnRegisterClass(TVsBaZmPj);

end.
