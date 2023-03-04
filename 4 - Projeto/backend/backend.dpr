program backend;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UDAO.Base in 'model\dao\UDAO.Base.pas',
  UDAO.Intf in 'model\dao\UDAO.Intf.pas',
  UUtil.Banco in 'model\utils\UUtil.Banco.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.