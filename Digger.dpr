program Digger;

uses
  FastMM4,
  Vcl.Forms,
  FormDigger in 'FormDigger.pas' {frmDigger},
  LightCore.AppData,
  LightVcl.Visual.AppData;

{$R *.res}

begin
  Application.Initialize;
  AppData:= TAppData.Create('Mouse Digger');
  { MainFormOnTaskbar TRUE => a taskbar button represents the application's main form and displays its caption. All child forms will stay on top of the MainForm (bad)! If False, a taskbar button represents the application's (hidden) main window and bears the application's Title. Must be True to use Windows (Vista) Aero effects (live taskbar thumbnails, Dynamic Windows, Windows Flip, Windows Flip 3D). https://stackoverflow.com/questions/66720721/ }
  Application.MainFormOnTaskbar:= TRUE;
  AppData.CreateMainForm(TfrmDigger, frmDigger, asFull);
  AppData.Run;
end.
