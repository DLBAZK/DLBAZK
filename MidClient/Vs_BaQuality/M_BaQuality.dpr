library M_BaQuality;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  UGMidVar,
  UVsMidPersistent in '..\BaseClass\UVsMidPersistent.pas',
  UVsMidStand in '..\BaseClass\UVsMidStand.pas',
  UVsBaSyZk in 'UVsBaSyZk.pas',
  UVsZkDetail in 'UVsZkDetail.pas',
  UVsBaSx in 'UVsBaSx.pas',
  UVsBaZmPF in 'UVsBaZmPF.pas',
  UVsBaZmPj in 'UVsBaZmPj.pas';

{$R *.res}
/// <summary>
/// 获取业务类类信息
/// </summary>
/// <param name="OperationClass"> 业务类类名</param>
/// <returns>类信息</returns>
Function NewOperationClass(OperationClass:String;ServerInfo:TServerInfo):TVsMidPersistentClass;
Begin
  InitMidDll(ServerInfo);
  Result:=GetOperationClass(OperationClass);
End;

Exports
  NewOperationClass;
begin
end.
