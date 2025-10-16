UNIT FormDigger;

{-------------------------------------------------------------------------------------------------------------
  Digger
  Gabriel Moraru 2021

  Digger is a tool (form) for developer that show the class name & component name of the component under mouse.
  Hint: You can show the Digger form only if the program is compiled in Debug mode.
  A warning: Disabled controls cannot be found/investigated but FindDragTarget will solve that problem.

  ADD NO DEPENDENCIES TO LightSaber HERE so it can be used in 3rd party projects (like ipm)
-------------------------------------------------------------------------------------------------------------}

INTERFACE

USES
  WinApi.Windows, Winapi.ShellAPI, WinApi.Messages, System.SysUtils, System.Classes, Vcl.StdCtrls, Vcl.Forms, LightVcl.Visual.AppDataForm,Vcl.Controls, Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  System.Actions, Vcl.ActnList;

TYPE

 TfrmDigger = class(TLightForm)
    pnlRight: TPanel;
    chkBox: TCheckBox;
    btnStart: TButton;
    ApplicationEvents: TApplicationEvents;
    Memo: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CheckBox1: TCheckBox;
    lblCaption: TLabel;
    ActionList: TActionList;
    actToggle: TAction;
    procedure ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actToggleExecute(Sender: TObject);
  protected
  private
    procedure Digg;
  public
 end;

VAR
   frmDigger: TfrmDigger;

IMPLEMENTATION  {$R *.dfm}





procedure TfrmDigger.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= TCloseAction.caMinimize;
end;





{--------------------------------------------------------------------------------------------------
   DIGGER
--------------------------------------------------------------------------------------------------}
function ShowParentTree(Control: TControl; Depth: Integer): string;  { Recursive }
VAR
  Ctrl: TControl;
begin
  Ctrl:= Control.Parent;
  if Ctrl = NIL
  then Result:= ''
  else
   begin
    Result:= System.StringOfChar(' ', Depth);
    Inc(Depth);
    Result:= Result+ ' '+ Ctrl.Name + '  ('+  Ctrl.ClassName+ ')'+ #13#10+ ShowParentTree(Ctrl, Depth);  { Recursive }
   end;
end;


procedure TfrmDigger.Digg;
VAR
   Ctrl : TWinControl;
begin
  Ctrl := FindVCLWindow(Mouse.CursorPos); { It will not "see" disabled controls }
  // ToDo: use FindDragTarget instead of FindVCLWindow to make it work with disabled controls and also with TImage (which is not derived from TWinCtrl)

  if Ctrl <> NIL then
  begin
    VAR s:= ctrl.Name+ ' ('+ ctrl.ClassName + ')';
    Memo.Text:= s+ #13#10+ ShowParentTree(ctrl, 1);

    Caption := s;
    if ctrl is TLabeledEdit then
      Caption := Caption + '  Text: '+TLabeledEdit(ctrl).Text;
  end;
  
  //lblStatus.Caption:= LightVcl.Common.VclUtils.ShowInheritanceTree(Ctrl);
end;


{--------------------------------------------------------------------------------------------------
   APP EVENT
--------------------------------------------------------------------------------------------------}
procedure TfrmDigger.actToggleExecute(Sender: TObject);
begin
 //
end;

procedure TfrmDigger.ApplicationEventsIdle(Sender: TObject; var Done: Boolean);
begin
  if actToggle.Checked then Digg;
end;


end.
