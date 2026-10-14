program Digger;

uses
  FastMM4,
  Vcl.Forms,
  FormDigger in 'FormDigger.pas' {frmDigger},
  LightCore.AppData,
  {$IFDEF AUTOPILOT}Autopilot.Bridge.Vcl in 'c:\Projects\Projects AI\Autopilot for Delphi\Source\Bridge\Autopilot.Bridge.Vcl.pas',{$ENDIF}{Optional}
  LightVcl.Visual.AppData;

{$R *.res}

begin
  Application.Initialize;
  AppData:= TAppData.Create('Mouse Digger');
  { MainFormOnTaskbar TRUE => a taskbar button represents the application's main form and displays its caption. All child forms will stay on top of the MainForm (bad)! If False, a taskbar button represents the application's (hidden) main window and bears the application's Title. Must be True to use Windows (Vista) Aero effects (live taskbar thumbnails, Dynamic Windows, Windows Flip, Windows Flip 3D). https://stackoverflow.com/questions/66720721/ }
  Application.MainFormOnTaskbar:= TRUE;
  AppData.CreateMainForm(TfrmDigger, frmDigger, asFull);

  { Optional: Via Autopilot, Claude can run/debug/test this program for you.
    For example, uncheck "Press Ctrl+alt+S to start / stop" (CheckBox1) & read the info about the control under the mouse in Memo.
    Don't have AUTOPILOT? Undefine $AUTOPILOT or get it from www.GabrielMoraru.com }
  {$IFDEF AUTOPILOT}
   Autopilot.Bridge.Vcl.StartBridge;
  {$ENDIF}
  AppData.Run;
end.
