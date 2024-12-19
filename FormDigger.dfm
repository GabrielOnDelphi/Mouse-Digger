object frmDigger: TfrmDigger
  Left = 450
  Top = 311
  Anchors = []
  Caption = 'Digger'
  ClientHeight = 327
  ClientWidth = 509
  Color = clBtnFace
  Constraints.MinHeight = 100
  Constraints.MinWidth = 100
  DoubleBuffered = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = []
  Position = poDesigned
  ScreenSnap = True
  ShowHint = True
  SnapBuffer = 4
  Visible = True
  OnClose = FormClose
  TextHeight = 18
  object pnlRight: TPanel
    Left = 357
    Top = 0
    Width = 152
    Height = 304
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object lblCaption: TLabel
      Left = 0
      Top = 0
      Width = 152
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = 'TEST AREA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chkBox: TCheckBox
      AlignWithMargins = True
      Left = 3
      Top = 268
      Width = 146
      Height = 17
      Align = alTop
      Caption = 'chkBox'
      TabOrder = 0
    end
    object btnStart: TButton
      AlignWithMargins = True
      Left = 3
      Top = 214
      Width = 146
      Height = 48
      Align = alTop
      Caption = 'Disabled btn'
      Enabled = False
      TabOrder = 1
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 17
      Width = 146
      Height = 191
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 2
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 138
        Height = 84
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 0
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 130
          Height = 29
          Align = alTop
          Caption = 'Panel3'
          TabOrder = 0
        end
      end
    end
  end
  object Memo: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 351
    Height = 298
    Align = alClient
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 307
    Width = 503
    Height = 17
    Action = actToggle
    Align = alBottom
    State = cbChecked
    TabOrder = 2
  end
  object ApplicationEvents: TApplicationEvents
    OnIdle = ApplicationEventsIdle
    Left = 94
    Top = 84
  end
  object ActionList: TActionList
    Left = 92
    Top = 140
    object actToggle: TAction
      AutoCheck = True
      Caption = 'Press Ctrl+alt+S to start / stop'
      Checked = True
      ShortCut = 49235
      OnExecute = actToggleExecute
    end
  end
end
