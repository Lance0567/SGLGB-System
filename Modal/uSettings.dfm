object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'System settigns and Configuration'
  ClientHeight = 565
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 476
    Height = 9
    Caption = 'ToolBar1'
    TabOrder = 0
    ExplicitWidth = 464
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 9
    Width = 476
    Height = 556
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 464
    ExplicitHeight = 548
    object TabSheet1: TTabSheet
      Caption = #9632'Regional Address Settings '
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 462
        Height = 50
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Republic of the Philippines | Republika ng Pilipinas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 460
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 7
          Top = 19
          Width = 443
          Height = 26
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 10
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 16
          ExplicitWidth = 414
          ExplicitHeight = 28
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 462
        Height = 50
        Margins.Top = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Province or Probinsya'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 53
        ExplicitWidth = 460
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 7
          Top = 19
          Width = 443
          Height = 26
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 10
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 16
          ExplicitWidth = 414
          ExplicitHeight = 28
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 104
        Width = 462
        Height = 50
        Margins.Top = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'City/Lungsod | Municipality/Bayan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ExplicitTop = 103
        ExplicitWidth = 460
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 7
          Top = 19
          Width = 443
          Height = 26
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 10
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 16
          ExplicitWidth = 414
          ExplicitHeight = 28
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 208
        Width = 462
        Height = 50
        Margins.Top = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'SERIAL NUMBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ExplicitTop = 203
        ExplicitWidth = 460
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 7
          Top = 19
          Width = 443
          Height = 26
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 10
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 16
          ExplicitWidth = 414
          ExplicitHeight = 28
        end
      end
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 261
        Width = 462
        Height = 221
        Align = alClient
        Caption = 'LOGO UPLOAD SETUP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        ExplicitTop = 253
        ExplicitWidth = 460
        ExplicitHeight = 222
        object gpLogoHolder: TGridPanel
          Left = 2
          Top = 17
          Width = 458
          Height = 157
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              Value = 33.282354970390380000
            end
            item
              Value = 33.265106652101420000
            end
            item
              Value = 33.452538377508200000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = Panel2
              Row = 0
            end
            item
              Column = 1
              Control = Panel4
              Row = 0
            end
            item
              Column = 2
              Control = Panel5
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end
            item
              SizeStyle = ssAuto
            end>
          TabOrder = 0
          ExplicitLeft = 136
          ExplicitTop = 88
          ExplicitWidth = 185
          ExplicitHeight = 41
          object Panel2: TPanel
            AlignWithMargins = True
            Left = 10
            Top = 0
            Width = 132
            Height = 157
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 4
            ExplicitTop = 60
            ExplicitWidth = 185
            ExplicitHeight = 41
            object SkLabel1: TSkLabel
              Left = 0
              Top = 0
              Width = 132
              Height = 16
              Align = alTop
              TextSettings.Font.Size = 12.000000000000000000
              TextSettings.Font.Weight = Bold
              TextSettings.HorzAlign = Center
              Words = <
                item
                  Caption = 'Barangay Logo'
                end>
              ExplicitLeft = 1
              ExplicitTop = 16
              ExplicitWidth = 185
            end
            object DBImage1: TDBImage
              AlignWithMargins = True
              Left = 10
              Top = 21
              Width = 112
              Height = 95
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 0
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 11
              ExplicitTop = 22
              ExplicitWidth = 163
              ExplicitHeight = 96
            end
            object gpLogo1: TGridPanel
              Left = 0
              Top = 116
              Width = 132
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = btnUpload1
                  Row = 0
                end
                item
                  Column = 1
                  Control = btnDelete1
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 1
              ExplicitLeft = 1
              ExplicitTop = 118
              ExplicitWidth = 183
              object btnUpload1: TButton
                AlignWithMargins = True
                Left = 5
                Top = 5
                Width = 56
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Upload'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = False
                ExplicitLeft = 6
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
              object btnDelete1: TButton
                AlignWithMargins = True
                Left = 71
                Top = 5
                Width = 56
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Delete'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TabStop = False
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
            end
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 162
            Top = 0
            Width = 133
            Height = 157
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 207
            ExplicitTop = 60
            ExplicitWidth = 185
            ExplicitHeight = 41
            object SkLabel2: TSkLabel
              Left = 0
              Top = 0
              Width = 133
              Height = 16
              Align = alTop
              TextSettings.Font.Size = 12.000000000000000000
              TextSettings.Font.Weight = Bold
              TextSettings.HorzAlign = Center
              Words = <
                item
                  Caption = 'LGU Logo'
                end>
              ExplicitLeft = 1
              ExplicitTop = 16
              ExplicitWidth = 185
            end
            object DBImage2: TDBImage
              AlignWithMargins = True
              Left = 10
              Top = 21
              Width = 113
              Height = 95
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 0
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 11
              ExplicitTop = 22
              ExplicitWidth = 148
              ExplicitHeight = 96
            end
            object gpLogo2: TGridPanel
              Left = 0
              Top = 116
              Width = 133
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = btnUpload2
                  Row = 0
                end
                item
                  Column = 1
                  Control = btnDelete2
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 1
              ExplicitLeft = 1
              ExplicitTop = 118
              ExplicitWidth = 168
              object btnUpload2: TButton
                AlignWithMargins = True
                Left = 5
                Top = 5
                Width = 56
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Upload'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = False
                ExplicitLeft = 6
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
              object btnDelete2: TButton
                AlignWithMargins = True
                Left = 71
                Top = 5
                Width = 57
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Delete'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TabStop = False
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
            end
          end
          object Panel5: TPanel
            AlignWithMargins = True
            Left = 315
            Top = 0
            Width = 133
            Height = 157
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 271
            ExplicitTop = 1
            ExplicitWidth = 185
            ExplicitHeight = 160
            object SkLabel3: TSkLabel
              Left = 0
              Top = 0
              Width = 133
              Height = 16
              Align = alTop
              TextSettings.Font.Size = 12.000000000000000000
              TextSettings.Font.Weight = Bold
              TextSettings.HorzAlign = Center
              Words = <
                item
                  Caption = 'Bagong Pilipinas Logo'
                end>
              ExplicitLeft = 1
              ExplicitTop = 16
              ExplicitWidth = 185
            end
            object DBImage3: TDBImage
              AlignWithMargins = True
              Left = 10
              Top = 21
              Width = 113
              Height = 95
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 0
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 74
              ExplicitTop = 18
              ExplicitWidth = 112
              ExplicitHeight = 98
            end
            object gpLogo3: TGridPanel
              Left = 0
              Top = 116
              Width = 133
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  Value = 50.000000000000000000
                end
                item
                  Value = 50.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = btnUpload3
                  Row = 0
                end
                item
                  Column = 1
                  Control = btnDelete3
                  Row = 0
                end>
              RowCollection = <
                item
                  Value = 100.000000000000000000
                end>
              TabOrder = 1
              ExplicitLeft = 1
              ExplicitTop = 118
              ExplicitWidth = 183
              object btnUpload3: TButton
                AlignWithMargins = True
                Left = 5
                Top = 5
                Width = 56
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Upload'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = False
                ExplicitLeft = 6
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
              object btnDelete3: TButton
                AlignWithMargins = True
                Left = 71
                Top = 5
                Width = 57
                Height = 31
                Cursor = crHandPoint
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Caption = 'Delete'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semilight'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TabStop = False
                ExplicitTop = 6
                ExplicitWidth = 55
                ExplicitHeight = 29
              end
            end
          end
        end
        object RelativePanel1: TRelativePanel
          Left = 2
          Top = 174
          Width = 458
          Height = 45
          ControlCollection = <
            item
              Control = btSaveLogo
              AlignBottomWithPanel = True
              AlignHorizontalCenterWithPanel = True
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = True
            end>
          Align = alBottom
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 178
          DesignSize = (
            458
            45)
          object btSaveLogo: TButton
            Left = 176
            Top = 7
            Width = 105
            Height = 30
            Anchors = [akBottom]
            Caption = 'Save Logo Setup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 156
        Width = 462
        Height = 50
        Margins.Top = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Barangay Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ExplicitTop = 153
        ExplicitWidth = 460
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 7
          Top = 19
          Width = 443
          Height = 26
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 10
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 16
          ExplicitWidth = 414
          ExplicitHeight = 28
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 485
        Width = 468
        Height = 39
        Align = alBottom
        TabOrder = 6
        ExplicitTop = 477
        ExplicitWidth = 456
        object btClose: TButton
          AlignWithMargins = True
          Left = 387
          Top = 4
          Width = 75
          Height = 31
          Margins.Right = 5
          Align = alRight
          Caption = 'Close'
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 7
          ExplicitHeight = 25
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #9632' System History '
      ImageIndex = 2
      object history: TRichEdit
        Left = 0
        Top = 0
        Width = 468
        Height = 524
        Align = alClient
        EditMargins.Left = 10
        EditMargins.Right = 10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        HideScrollBars = False
        Lines.Strings = (
          'history')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitWidth = 456
        ExplicitHeight = 516
      end
    end
  end
end
