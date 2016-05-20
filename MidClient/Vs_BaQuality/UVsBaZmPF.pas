unit UVsBaZmPF;

interface
   uses
   SysUtils,Classes,UVsMidStand,DB,DBClient;

   type
     TVsBaZmPF=class(TVsMidStand)
      Public
      Constructor Create;Override;
     end;
implementation

{ TVsBaZmPF }

constructor TVsBaZmPF.Create;
begin
  inherited;
  SelectSql := '';
  
end;
initialization
  Classes.RegisterClass(TVsBaZmPF);
finalization
  Classes.UnRegisterClass(TVsBaZmPF);

end.
