object FrmInconsistencia: TFrmInconsistencia
  Left = 230
  Top = 172
  Width = 820
  Height = 563
  Caption = 'Inconsist'#234'ncia entre bases'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object pnlWebXLocal: TPanel
    Left = 129
    Top = 81
    Width = 675
    Height = 444
    Align = alClient
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 804
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 346
      Height = 16
      Caption = 'Escolha onde verificar a inconsistencia de dados:'
    end
    object Bevel1: TBevel
      Left = 496
      Top = 16
      Width = 281
      Height = 58
    end
    object lblExplic: TLabel
      Left = 520
      Top = 24
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 
        'Verificando dados existentes na base web que n'#227'o existam na base' +
        ' local.'
      WordWrap = True
    end
    object rg1Opcao: TRadioGroup
      Left = 8
      Top = 32
      Width = 433
      Height = 41
      Columns = 2
      Items.Strings = (
        'Base Local X Base Web'
        'Base Web X Base Local')
      TabOrder = 0
      OnClick = rg1OpcaoClick
    end
  end
  object fcOutlookBar1: TfcOutlookBar
    Left = 0
    Top = 81
    Width = 129
    Height = 444
    ActivePage = fcBtnRel
    Align = alLeft
    Animation.Enabled = True
    Animation.Interval = 1
    Animation.Steps = 7
    AutoBold = False
    BevelOuter = bvNone
    BorderStyle = bsSingle
    ButtonSize = 20
    ButtonClassName = 'TfcShapeBtn'
    Layout = loVertical
    Options = [cboAutoCreateOutlookList]
    PanelAlignment = paDynamic
    ShowButtons = True
    TabOrder = 1
    object fcBtnRel: TfcShapeBtn
      Left = 0
      Top = 0
      Width = 125
      Height = 20
      Caption = 'Relat'#243'rio'
      Color = clBtnFace
      DitherColor = clWhite
      Down = True
      GroupIndex = 1
      NumGlyphs = 0
      ParentClipping = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcBtnRelClick
    end
    object fcnBtnIns: TfcShapeBtn
      Left = 0
      Top = 420
      Width = 125
      Height = 20
      Caption = 'Inser'#231#227'o For'#231'ada'
      Color = clBtnFace
      DitherColor = clWhite
      GroupIndex = 1
      ParentClipping = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcnBtnInsClick
    end
    object OutlookPanel1: TfcOutlookPanel
      Left = 0
      Top = 20
      Width = 125
      Height = 400
      object fcOutlookBar1OutlookList1: TfcOutlookList
        Left = 0
        Top = 0
        Width = 125
        Height = 400
        Align = alClient
        BorderStyle = bsNone
        ClickStyle = csClick
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrackStyle = hsIconHilite
        ItemHighlightColor = clBtnFace
        ItemHotTrackColor = clBtnShadow
        ItemLayout = blGlyphTop
        ItemShadowColor = clBtnText
        ItemSelectedDitherColor = clBtnHighlight
        Items = <>
        ItemSpacing = 20
        ItemsWidth = 0
        Layout = loVertical
        ScrollButtonsVisible = True
        ScrollInterval = 250
        Transparent = False
      end
    end
    object OutlookPanel2: TfcOutlookPanel
      Left = 0
      Top = 0
      Width = 125
      Height = 0
      object fcOutlookBar1OutlookList2: TfcOutlookList
        Left = 0
        Top = 0
        Width = 125
        Height = 0
        Align = alClient
        BorderStyle = bsNone
        ClickStyle = csClick
        Color = clBtnShadow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrackStyle = hsIconHilite
        ItemHighlightColor = clBtnFace
        ItemHotTrackColor = clBtnShadow
        ItemLayout = blGlyphTop
        ItemShadowColor = clBtnText
        ItemSelectedDitherColor = clBtnHighlight
        Items = <>
        ItemSpacing = 20
        ItemsWidth = 0
        Layout = loVertical
        ScrollButtonsVisible = True
        ScrollInterval = 250
        Transparent = False
      end
    end
  end
  object pnlLocalXWeb: TPanel
    Left = 129
    Top = 81
    Width = 675
    Height = 444
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 673
      Height = 442
      ActivePage = tbsInsercao
      Align = alClient
      TabHeight = 1
      TabOrder = 0
      TabWidth = 1
      object tbsRelatorio: TTabSheet
        Caption = 'tbsRelatorio'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 665
          Height = 431
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvNone
          TabOrder = 0
          object ppViewer1: TppViewer
            Left = 1
            Top = 33
            Width = 663
            Height = 377
            Align = alClient
            BevelOuter = bvNone
            Color = clBtnShadow
            PageColor = clWindow
            Report = rReport
            ZoomPercentage = 100
            ZoomSetting = zsWholePage
            OnPageChange = ppViewer1PageChange
            OnPrintStateChange = ppViewer1PrintStateChange
            OnStatusChange = ppViewer1StatusChange
          end
          object pnlPreviewBar: TPanel
            Left = 1
            Top = 1
            Width = 663
            Height = 32
            Align = alTop
            BevelOuter = bvNone
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            object spbPreviewPrint: TSpeedButton
              Left = 4
              Top = 5
              Width = 24
              Height = 24
              Hint = 'Impress'#227'o do relat'#243'rio'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                0000000000077777000077707777777770707777000077000000000000070777
                0000770777777BBB770007770000770777777888770707770000770000000000
                0007707700007707777777777070707700007770000000000707007700007777
                0FFFFFFFF07070770000777770F00000F00007770000777770FFFFFFFF077777
                00007777770F00000F07777700007777770FFFFFFFF077770000777777700000
                000077770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewPrintClick
            end
            object spbPreviewWhole: TSpeedButton
              Left = 38
              Top = 4
              Width = 24
              Height = 24
              Hint = 'P'#225'gina Inteira'
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                6E030000424D6E03000000000000760000002800000050000000130000000100
                040000000000F802000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
                7F7F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
                00000000000000777F00000000000000007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770868000000
                0068607777086800000000686077770868000000006860777F08080000000008
                007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
                F70080087878708080F77708680FFFFFF06860777708680FFFFFF06860777708
                680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
                00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
                F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
                007F7706860F00F0F08680777706860F00F0F08680777706860F00F0F0868077
                F70080080070708080F77708680FFFFFF06860777708680FFFFFF06860777708
                680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
                00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
                F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
                007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
                F70080087878708080F777086800000000686077770868000000006860777708
                68000000006860777F08080000000008007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770000000000
                0000007777000000000000000077770000000000000000777F00000000000000
                007F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
                77777777777777777F7F7F7F7F7F7F7F7F7F}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewWholeClick
            end
            object spbPreviewFirst: TSpeedButton
              Left = 120
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Primeira p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077778877777778777777000077770077777780777777
                0000777700777778007777770000777700777780007777770000777700777800
                0077777700007777007780000077777700007777007778000077777700007777
                0077778000777777000077770077777800777777000077770077777780777777
                0000777788777777787777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewFirstClick
            end
            object spbPreviewPrior: TSpeedButton
              Left = 144
              Top = 4
              Width = 24
              Height = 24
              Hint = 'P'#225'gina anterior'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777777777877777777000077777777778077777777
                0000777777777800777777770000777777778000777777770000777777780000
                7777777700007777778000007777777700007777777800007777777700007777
                7777800077777777000077777777780077777777000077777777778077777777
                0000777777777778777777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewPriorClick
            end
            object spbPreviewNext: TSpeedButton
              Left = 211
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Pr'#243'xima p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777778777777777777000077777770877777777777
                0000777777700877777777770000777777700087777777770000777777700008
                7777777700007777777000008777777700007777777000087777777700007777
                7770008777777777000077777770087777777777000077777770877777777777
                0000777777787777777777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewNextClick
            end
            object spbPreviewLast: TSpeedButton
              Left = 235
              Top = 4
              Width = 24
              Height = 24
              Hint = #218'ltima p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777877777778877777000077777087777770077777
                0000777770087777700777770000777770008777700777770000777770000877
                7007777700007777700000877007777700007777700008777007777700007777
                7000877770077777000077777008777770077777000077777087777770077777
                0000777778777777788777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewLastClick
            end
            object spbPreviewWidth: TSpeedButton
              Left = 62
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Largura da p'#225'gina'
              AllowAllUp = True
              GroupIndex = 1
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                6E030000424D6E03000000000000760000002800000050000000130000000100
                040000000000F802000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
                7F7F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
                00000000000000777F00000000000000007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
                00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
                007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
                F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
                0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
                00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
                007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
                F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
                0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080FFFFFFF
                FFF0607777080FFFFFFFFFF0607777080FFFFFFFFFF060777F08008787878780
                007F770600000000000080777706000000000000807777060000000000008077
                F70000000000000080F777086868686868686077770868686868686860777708
                68686868686860777F08080808080808007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770000000000
                0000007777000000000000000077770000000000000000777F00000000000000
                007F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
                77777777777777777F7F7F7F7F7F7F7F7F7F}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewWidthClick
            end
            object spbPreview100Percent: TSpeedButton
              Left = 86
              Top = 4
              Width = 24
              Height = 24
              Hint = '100 %'
              AllowAllUp = True
              GroupIndex = 1
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                BA030000424DBA03000000000000760000002800000051000000130000000100
                0400000000004403000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7
                F7F7F00000007777777777777777777777777777777777777777777777777777
                777777777F7F7F7F7F7F7F7F7F7F700000007700000000000000007777700000
                0000000000077770000000000000000777F00000000000000007F00000007706
                80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
                87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
                860FFFFFFFFFFF0777F08008787878787807F0000000770680FF000F00000077
                7770680FF000F00000077770680FF000F00000077F70080780008000000F7000
                0000770860FF000F000000777770860FF000F00000077770860FF000F0000007
                77F08008700070000007F0000000770680FFFFFFFFFFF0777770680FFFFFFFFF
                FF077770680FFFFFFFFFFF077F70080787878787870F70000000770860FFFFFF
                FFFFF0777770860FFFFFFFFFFF077770860FFFFFFFFFFF0777F0800878787878
                7807F0000000770680FF000F000000777770680FF000F00000077770680FF000
                F00000077F70080780008000000F70000000770860FF000F000000777770860F
                F000F00000077770860FF000F000000777F08008700070000007F00000007706
                80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
                87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
                860FFFFFFFFFFF0777F08008787878787807F000000077068000000000000077
                77706800000000000007777068000000000000077F70080000000000000F7000
                0000770868686868686860777770868686868686860777708686868686868607
                77F08080808080808007F0000000770686868686868680777770686868686868
                6807777068686868686868077F70080808080808080F70000000770000000000
                00000077777000000000000000077770000000000000000777F0000000000000
                0007F00000007777777777777777777777777777777777777777777777777777
                777777777F7F7F7F7F7F7F7F7F7F700000007777777777777777777777777777
                7777777777777777777777777777777777F7F7F7F7F7F7F7F7F7F0000000}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreview100PercentClick
            end
            object Bevel2: TBevel
              Left = 510
              Top = 1
              Width = 1
              Height = 33
              Style = bsRaised
            end
            object mskPreviewPercentage: TMaskEdit
              Left = 268
              Top = 6
              Width = 37
              Height = 21
              TabStop = False
              AutoSelect = False
              EditMask = '999\ %;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyPress = mskPreviewPercentageKeyPress
            end
            object mskPreviewPage: TMaskEdit
              Left = 170
              Top = 6
              Width = 37
              Height = 21
              TabStop = False
              AutoSelect = False
              EditMask = '99999;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyPress = mskPreviewPageKeyPress
            end
            object pnlCancelButton: TPanel
              Left = 608
              Top = 0
              Width = 55
              Height = 32
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object spbPreviewCancel: TSpeedButton
                Left = 3
                Top = 4
                Width = 47
                Height = 24
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                OnClick = spbPreviewCancelClick
              end
            end
          end
          object pnlStatusBar: TPanel
            Left = 1
            Top = 410
            Width = 663
            Height = 20
            Align = alBottom
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 2
          end
        end
      end
      object tbsInsercao: TTabSheet
        Caption = 'tbsInsercao'
        ImageIndex = 1
        object Label2: TLabel
          Left = 8
          Top = 4
          Width = 145
          Height = 16
          Caption = 'Item a ser localizado'
        end
        object Label3: TLabel
          Left = 176
          Top = 4
          Width = 145
          Height = 16
          Caption = 'Item a ser localizado'
        end
        object edtItem: TEdit
          Left = 172
          Top = 20
          Width = 425
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = dblItemExit
        end
        object dblItem: TwwDBLookupCombo
          Left = 174
          Top = 22
          Width = 425
          Height = 24
          CharCase = ecUpperCase
          DisableThemes = False
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'nome'#9'60'#9'Nome'#9'F'
            'cpf'#9'20'#9'CPF'#9'F'
            'rg'#9'16'#9'RG'#9'F')
          LookupTable = cdsReport
          LookupField = 'nome'
          Navigator = False
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          UseTFields = False
          AllowClearKey = False
          ShowMatchText = True
          OnExit = dblItemExit
        end
        object cbbItem: TComboBox
          Left = 8
          Top = 20
          Width = 153
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          OnCloseUp = cbbItemCloseUp
          Items.Strings = (
            'C'#243'digo'
            'Nome'
            'CPF'
            'RG'
            'Data da Inser'#231#227'o')
        end
        object btnSeek: TBitBtn
          Left = 604
          Top = 12
          Width = 57
          Height = 37
          TabOrder = 3
          OnClick = btnSeekClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
            9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
            E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
            44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
            C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
            C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
            E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
            91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
            C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
            FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
            EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
            76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
            7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
            FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
            DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
            98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
            B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
            EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
            8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
            E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object grp1: TGroupBox
          Left = 8
          Top = 62
          Width = 649
          Height = 185
          Caption = '  Dados Localizados  '
          TabOrder = 4
          object Label4: TLabel
            Left = 12
            Top = 26
            Width = 51
            Height = 16
            Caption = 'C'#243'digo'
          end
          object Label5: TLabel
            Left = 120
            Top = 26
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object Label6: TLabel
            Left = 14
            Top = 74
            Width = 42
            Height = 16
            Caption = 'C.P.F.'
          end
          object Label7: TLabel
            Left = 404
            Top = 74
            Width = 31
            Height = 16
            Caption = 'R.G.'
          end
          object Label8: TLabel
            Left = 14
            Top = 130
            Width = 120
            Height = 16
            Caption = 'Data da Inser'#231#227'o'
          end
          object edtCodigo: TEdit
            Left = 14
            Top = 44
            Width = 99
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtNome: TEdit
            Left = 122
            Top = 44
            Width = 517
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtCPF: TEdit
            Left = 16
            Top = 94
            Width = 231
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edtRG: TEdit
            Left = 406
            Top = 92
            Width = 231
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edtData: TEdit
            Left = 16
            Top = 150
            Width = 145
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object btnInsere: TBitBtn
          Left = 132
          Top = 280
          Width = 363
          Height = 103
          Caption = 'For'#231'ar a inser'#231#227'o de dados selecionados'
          TabOrder = 5
          OnClick = btnInsereClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB5763FB5763FB5763FB5763FB5763FB5763FB5763FB576
            3FB5763FB5763FB5763FB5763FB5763FB5763FFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B493ECE0D3F4EAE4E9DDCEF0E5DCECE0D3
            EEE4D9EEE1D5EFE2D7EEE3D8EDE1D4F0E7DBF3EAE2EBDDCEE9D9C9D7B99BFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFE5D4C3E8D8C6F4EDE6FAF6F4EE
            E3D7F8F3EFF1E7DCF6EFE7F2ECE2F3EAE2F5EEE8F0E7DDF7F1ECF6EFE8F2E9DF
            F6F1EBDDC5AAFCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC0A0F7F3
            ECDBC2A5FFFFFFD2B48FFDFBFADAC0A4F1E8DDE6D6C3E4D4BDF2EAE2D9BFA1F9
            F8F5DCC2A7FAFAF7D7BB9BF1E7DCE0C6A8FFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
            FCFAF7DEC8ABFFFFFFF8F5F0FFFFFFF0E7DAFFFFFFF2E8DFFDFCFBF7F3EEF5F0
            E8FFFFFFF1E8DDFFFFFFF3EBE3FFFFFFF5EEE5FDFCFADAC09FFFFFFFFFFFFFFF
            FFFFFFFEFEFFFFFFDEC7A9F4ECE2DEC7AAEDE1D2ECE2D3D3B28CFFFFFFCCA97C
            F8F4EEE2CEB5DCC3A6FCFBF9CBA577FFFFFED8BD9BF5EEE5E2CFB7E1CCB2ECE0
            D0E7D5BFFFFFFFFFFFFFFFFFFFFFFFFFD7BA95FFFFFFFFFFFFFFFFFFFFFFFFFE
            FEFEFFFFFFFEFEFDFFFFFFFFFFFFFEFEFEFFFFFFFEFEFDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFDFDD8BB97FFFFFFFFFFFFFFFFFFEEE0D0E9D8C4EDE0D1D0B0
            87FFFFFFCAA473E8D8C3F5EFE7C39964FDFDFEDBC1A1D2B38CFFFFFFC59D6AEE
            E2D4EEE2D5D1AF86FFFFFFC9A270EDE1D1E1CEB4FAF6F1FFFFFFFFFFFFDEC6A7
            FFFFFFFFFFFFFBF9F7FFFFFFF6EFE7FFFFFFFFFFFFF2EBE1FFFFFFFBFBF9F6F3
            F0FFFFFFF5EFE7FFFFFFFFFFFFF8F1EAFFFFFFF8F4EEFFFFFFFDFAF8DEC7A9FF
            FFFFEFE4D2DFCCABFEFFF9FEFFFBFCFDF8FBFCF4FEFEFAF7F1E9F9F4EEFDFEF9
            FCF9F1FFFFFCFFFFFAFFFBF4FFFFFCFAF4EDF7F3EBFCFAF5FAF9F1FEFFFBFEFF
            F8FCFDF5DECAA5FFFFFFB5763FB5763FB5763FB5763FB5763FB5763FB5763FDA
            B087DAB086B5763FB5763FB5763FB5763FB5763FB5763FDAB086DAB087B5763F
            B5763FB5763FB5763FB5763FB5763FB5763FFFFFFFC59671BD8E5DBD8D5DBD8D
            5DBD8D5CBE8F5FDAB289DAB087BE8A587751181267161267167D5118BF8A58DA
            B087DAB289BE8E5DBC8A59BD8D5DBD8D5CC29768B47749FFFFFFFFFFFFFFFFFF
            BB8857B5763FB57841B37942BA854FDAB28ADBB289A4804F196D1F47CD9246CD
            92196D1FA7824FDCB289DAB289B9804DC39469B07C43B17941B37C43FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCB28ADBB188
            DCB289DCB289DDB289DCB289DBB188DBB189FFFFFFFCF9F6FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF1E7127DCB28ADCB28ADCB28ADCB28ADCB28ADCB28A1E7127FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FEFFFFFFFFFFFF23752D81E0BE7FDCB776D4AE75D4AD73D4AC72D3AC7CD8B27E
            DBB723752DFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF4FAF7287A348AD5B891D4B69DD8BBA5DDC19CD6B99BD6
            B8A0D9BB97D3B28ECEAC84CFAE287A34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF328340328340328340328340
            BDE3D0ABDBC3A8D9C1B8E1CD328340328340328340328340FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF429155D1ECE0BBE1D0B7DFCDCAE8D9429155FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFFFEFFFFFFFFFFFF49975FC4E4D9C9E6DDC4E4D9C3E3D849975FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C9A63D7EDE8D7EDE8D2EA
            E4D6ECE74C9A63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF5EAA7B
            FFFFFFFFFBFFFFFAFFFFFFFF5EAA7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF71BC94FEFFFFF2F9F6F2F9F6F3FAF771BC94FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF81C9A881C9A881C9A881C9A881C9A881C9A8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
      end
    end
  end
  object dtpBaseLocal: TDataSetProvider
    DataSet = sqlBaseLocal
    Left = 20
    Top = 4
  end
  object sqlBaseLocal: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'SELECT *'
      'FROM tbcliente'
      
        'WHERE REPLACE(REPLACE(REPLACE(REPLACE(CNPJ,'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39'/'#39','#39 +
        #39'),'#39' '#39','#39#39') <> '#39#39
      '  AND NP <> '#39'C'#39)
    Params = <>
    Left = 80
    Top = 4
  end
  object cdsBaseLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtpBaseLocal'
    Left = 156
    Top = 4
  end
  object dtpBaseWeb: TDataSetProvider
    DataSet = sqlBaseWeb
    Left = 324
    Top = 4
  end
  object sqlBaseWeb: TZQuery
    Connection = fdm.conectnet
    SQL.Strings = (
      'select c.*, b.nome as nome_banco '
      
        'from tab_clientes c left join tab_bancos b on (c.numero_banco = ' +
        'b.numero) '
      'where (c.cpf is not null and c.cpf<>"" '
      '  and c.cpf <>"000.000.000-00" and cpf <>"00.000.000/0000-00"'
      
        '  and c.cpf <>"00000000000" and cpf <>"00000000000000") order by' +
        ' c.nome')
    Params = <>
    Left = 400
    Top = 4
  end
  object cdsBaseWeb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'dtpBaseWeb'
    Left = 478
    Top = 4
  end
  object rReport: TppReport
    AutoStop = False
    DataPipeline = rrpipReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'HP Deskjet 3050 J610 series (Rede)'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    Language = lgPortugueseBrazil
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 55
    Top = 310
    Version = '10.03'
    mmColumnWidth = 0
    DataPipelineName = 'rrpipReport'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Relat'#243'rio de Inconsist'#234'ncia entre Bases'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7408
        mmLeft = 43921
        mmTop = 2910
        mmWidth = 120915
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AutoSize = True
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D61676525130000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080060007103012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF3
          911300F1C21192403CF507D39FEB4F64662BD460F5CE41FAFE27F4A682B2150A
          491B8127B1FF0038FC3F2AFCF4FF0082AC7FC14B751F067886F3E13FC33D40DA
          6AF12E3C45ADC4DF3E9C187FC7B447B4A41CB3755C80307247939D67586CAF0B
          2C5E29E8B65D5BEC8FA3E16E17C77106610CBB011BC9EADBDA2BAB7E5F9BD0FA
          4BF69CFF0082917C26FD966F1B4ED675DFED2F104431FD93A4AFDAAF14F657C1
          DA9D3F8C8FA57CB7E2CFF82F55F5C49B3C35F0AE56B704ED9355D55632C3DE34
          423FF1EAFCFCB1B28ED1DE40CF2DC4CC5E59E562F2CCC792CCC7924D5E8DF757
          E0F99F8A79AD79BFAADA9C7D2EFE6DFE963FAF321FA3EF0F61692FED072AF3EA
          DB7157F251B69EAD9F6FE9DFF05D3F1D0B806EBE19F87A488E0910EA72AB9FC4
          839AF42F037FC175741B89513C4BF0FF00C45A4A71BA5B3952E635E31D3838AF
          CE6865ABD6B7255BAD72E17C48CEE12BCAA297AA5FE47A38EF037852AC6D0A0E
          0FBA94BFCCFD8EF845FF00051CF83DF1A244834CF19E9D637729C2DAEA87EC32
          9CFB4802FE46BDA74DBD83518629EDE58A68264DC9244D94700F0411C62BF058
          5BDAEA1C4F0452FB95E47E3D6BBDF84FF187C67F06AE566F07F8C35CD0C0209B
          713996D5F1D9A36CA91F515F6F9678A6A568E3697CE3FE4FFCCFCA33FF00A3E3
          85E795623E535FAAFF00267ED972382C0281C01D546288DCA36D284856C0EF8E
          3FCFE75F9FBF05FF00E0AFBE22D07C8B5F881E1D8356B65203EA5A41F2E5C772
          D13654FF00C04AD7D8BF05BF699F03FED07A609FC31AFDA5ECAE3F7968C7CABA
          84E3A346791D3AF23DEBF47CAF88301982FF0066A89BECF47F77F91F8767DC19
          9BE4F26B1D45A8FF0032D63F7ADBE763D00A1719E53D06075EB4D41B531963B0
          1C73F85260A46010AC4E4B77E47B7F4A499BCD0F8DDB7041EBC7F8FF00F5BDEB
          DA3E5C5772481F3E02FB673E9F5C669AEAA1CB0DA33B4039C67D39F5FE942C65
          4866E1957E66C1C9FF003FE34A0ABB2E376D5CFA9CFD3F3FAFEB4012F903D5FF
          00EFA34533EC117F77F5A2803CB3F6D3FDA061FD95FF00664F15F8CB086EF4BB
          265B08D88C497727EEE118EFF3B0247A035F84D6779777F25C5F6A33C977A9EA
          733DE5EDC48DB9E69A4259998F73935FA4BFF05FFF008872597C21F00F852195
          445E21D6DAE6E2356C8296E848E3D32EBF957E6B2CF96EB5FCF9E2B6653AD984
          7069FBB4D7E2F5FCAC7F66FD1E323A786C9AA66725EFD69357FEEC74B7DF72F4
          72026A649481EB54239BDEA68E73915F9472D8FE8952B9A31CBD2ADC13E0F5AC
          A8A6C71EB56629F1549D8992B9B7697041FA56AE9F7DB31D8573705D61AB42D2
          E8F15D54AA1C35E8F323B2D3753C0041ADBD16F1F4CD560D434FB9B9D2F53B76
          DF15DDA4862951BD722B87B0BFD8473C56E69FA8904739AF570D8A95392941D9
          9F399865F4EAC5C2A4534FA33ED4FD9AFF00E0A7DAAF84E7B5D23E25A36A7A60
          2234D72D63C4F17606641F787BAE0FB1AFB87C2DE2BD33C77A1DA6A7A45DDB6A
          7A75E20961B8B7903C5229E320F63EC4020822BF19B4FD4832E0E1811820F20D
          7A67ECE9FB4AF897F661F11FDB34295AFB43B870750D12672619C7764FEEBE3A
          11F8E6BF58E1BE3C9C1AA18F7CD1FE6EABD7BFE7F91FCE7C73E1052A8A58BC9D
          72CF770E8FD3B3FC3F33F5782965C12CC5860E78F7E9F8FF00FAE9CAA03E3054
          2F039E99C715C27C04FDA0BC31FB4878263D73C3F79E6AA652EACE6E27B293A9
          4917B7B1E870315DC24A7FBD90C77614E78C73FAE7A57EBB4AAC2AC154A6EE9E
          CCFE6EC461EAD0A92A35A2E328E8D3DD0FFB29FF00A67FF7C8A29BBA7FEE9FCB
          FF00B2A2B4313F2DFF00E0E10D41C7C5EF84F6E4E225B1BE971E8DBD33FA62BE
          0A8EE73DEBF413FE0E26F0F986FBE0FEBAA3F76971A869EE7DDD626507FEF86A
          FCF5F0E4827D7AC50A960D711E47A8DC322BF9B3C42A1279E55BF5E5FC91FDCF
          E0C62E2B84A85BA39DFF00F0265F8A427A03C54C9363A9C7D6B94D0A1B4D675E
          78EF1EF3ECF231936C2D961B9BB0638E2B52C09D22FF005AB68EE16FA0D32366
          865FBCAC7CD58C373FC3F3671EA2BE2A584BFC2CFD6238E717692EDB3EF65D97
          56BEF37A390900E0E3D6AC453E08CD737A369116ABE1EBCD40EA7770DEDB234C
          9BBFD5C815B05776786F418C76A45D467B4F0F42E6E2532DFDC4A4CADF79115C
          46141ED96C93E9C564F0AED74FFAD8E858CD6D65BDB7F26FAA5A596E75F0CD83
          DEAEDBDD63BD729E27D31FC35A1417965ACDC5C2DDACA8C8E0AC9148806786CF
          CA7230C3DC568EB0EE3C6D3D8C77F35A5B0611FDDCECDA8BB8F033D73C7BD1F5
          769735FF00A6AE1F58727CB6E8DFDCD27D2FBBEDFF0007AAB5BBF7AD3B2D4361
          E0D72A96B73E1EF15C7A6DC5E2DF5BCD0FDA239D7A98FCB3203CF3CAA9183D0D
          58F0A43A878D2EA45B7D42DED261910DBB0C09582EED80E0F38EE71935BD3A52
          4ECFFAFEBFE18E5AD522E2DDB6577E8F6FC9FA59DEC77961A9F20E6B6F4FD570
          7EF579BE9FE2391FC252DC7CA97B0DEC70EF2B946431B31C8F5E3D78C56CD9BE
          AB0F87C6ACB7565736EAC8B2C2301E2DFF007491D4038C672707AD7752E65D7C
          CF1F114D3BAE5EB6E9BE9A6FF2F5D8F5EF849F1935BF807E3FB6F16F86E631DD
          DB102F6D327C9D460CFCD1B8EE71D0F507915FAB9F083E2AE97F1CBE19691E28
          D0E52F63AB40B2229601A26E8F1B7A329041FF000AFC64D17C40B796B14EB9DB
          22EE009E47B57DCFFF000468F1ECD7FE1BF1F7851DD9ED743BF8AFADD4F48D6E
          11B2BF4DD1935FAA78779E54588797D4778C936BC9A3F9DFC6AE13A0F04B39A2
          AD38B4A5E69EDF733EDCCBFF00787FDF07FC68A67F6847FDF5FD3FC68AFD90FE
          623E24FF0082FA7C3093C6FF00B0F7F6EDBC724D3F8275AB5D48E00F9636DD0C
          873E83CC04FD3DABF217C377C1B548651B9822B4C31D7010B66BFA29F8F9F09E
          D7E38FC13F167832F551ADBC47A5CF6241002A174211BEA1B07FE023A57F3873
          E91AA7C35F13EA7A06A2B2D9EB3E1ABD974EB94230C9246C50F5FA7E55F8B789
          797B863296352D24ACFD53FF002B1FD49E04E74AA65B88CADBF7A2EEBD24BFCD
          30F0E4563A95B4AB791DC3344EA11A2703036F20822BA3D03518341BA6305AA4
          904B198668A66DDE7C67AAB118C7A8C6304035812EA92DECDBE67323E00CE00F
          E5534575D335F964DB4FDDE87F44426A57E7EBE6FF00AD0DA8F46D0FEDC2453A
          BC70B105A1F31188FA3639FA915A3652698BE1A6D3352171269F6F2BCD05E2ED
          49AD8B9F98107E5656C0CAF5C804573F0DD640E95A5A5EB93E9BBFCA64292802
          449235911C7B822B1E769FBDB7A1D36BC7DD7AF4BBEBDFD7F3D9E85496DACEF6
          EAD6DF4EBBBCD404ECA8CD344C8532E385C93918E7D2B6EECDBF887C75AC7997
          B35A959E59A19D23DE72242A01C104715145AE486759235B6819183810C22319
          078CE3AD4F75A92EA17466FB2D95BCAE4977822D86424E4E7F1E6B39D48D9DBB
          DFF0B773AA9C66DADB6B74EF7DAD6F2DBFCCD8F0E3C1E1AD6EDEFD6493559A16
          3BBCF5DA922952ACA7A93952467B66AC1F0FD85BDDBCDA46B975676D28C98268
          8F9B18C636EE5E1B038DC31915890DC7BD5A8AE327AD60B113474CB0D17F876E
          9B696B69E4BAB3535A58342F08592C6657135E4B23BB0C6F0B1AA8C0ED8DDFAD
          6A41A24B676DF673AE5BCF6636ED8E346DC71D32081D3DCF1592DA85BDF69296
          975650DC884B3452195D5A32D8CF00E0FDD1D6A682F09E73CD6CF129256DEDF7
          69FF000E73AC349BF7B4B36FA6B777BF5F2F9FA23A6D2EE92CE04863E234185C
          F27F1AFBCFFE0879E1B9EF346F897E2A2AE2D751D4EDF4EB76FF009E9F668D8B
          E33D466603EA2BF3BED1353F126B3A6681A15B497FE21F10DCAD8E9B6C832D2C
          AE719FF757A93D80AFDB5FD907F677B6FD967F677F0EF826D1D669F4C843DEDC
          018FB4DD39DF349EE0B1FCB1F4AFD43C30CBAA56C6CB1D25EEC1357EEDFF00C0
          3F9F3C7ECEE86172B865107EFD469B5DA31D6FF7D8F51CB7A2FE74547F653FF3
          DA6FCC7F8515FBB9FC8435C6C62377CCC3206704F6FF000AFC70FF0082F4FEC8
          33FC20F8EB69F17348B53FF08EF8D8AD96B4635CADAEA08A36C8DE8254039FEF
          237AD7EC7988ED3B4F6FE219E3B803E83D2B91F8EFF043C3BFB497C26D73C1BE
          2AB35BFD135D81ADE68FF8E3E855D0E32B22B00CA71C11D0F7F1388327866582
          9619EFBA7D9FF5A1F55C1BC4D5322CD29E3A1AC7692EF17BFDDBAF43F9B58A7F
          7AB30DC71C1AF41FDB37F632F167EC1DF1725F0C7892392F343BA667D0B5C44F
          F47D4E007804F45957A321E41F50413E5C93E075AFE70C6E02AE1AACA8568DA4
          8FEE4CAB36C3E3B0D0C5E164A5092BA68DA86E7918356E0BAE7AF35851DC8F5A
          B70DDE7B8AF3A748F6A9D53760BA39F4356E0B9C8F4358505E7BF156E0BBF97A
          D72CE91E852AACDC867CF7AB90DC1E2B120BAE07356E2BB0ABB9880A06493C01
          5CB3A763D0A752E6DC5719EE053AEB57362F04290CF79797B2086D2CEDD0BCF7
          7213854451C924D697C08F835E36FDA93C5ADA17C3AF0FDC6BD771902E6F9879
          5A769C0FF14D31F947D3A9EC0D7EAE7EC01FF04A9F0C7EC81710F8A3C453A78C
          7E23CF1FCDAA4B1620D3411CC76B19E571D0B91B8FB0E2BEBF8678271B9B5453
          6B9297593FD3B9F9A71EF8A995F0ED19538C954C43DA09EDE72ECBFA57398FF8
          2577FC136AEFE02423E23FC42B78DBE20EAD06DB3B123727876D9BAC60F4F398
          7DE3D81C0EF5F6D3020B2AB7CFD700E3193FFEBED4AA7736368C32F5CE491FD6
          828579CE402324AE491D7F9D7F486599661F01868E170D1B463F8F9BF33F86B3
          ECF7199C63678FC74B9A72FB92E89764BFAD46ED7FF9EA9FAFF8D14BF6CF783F
          EFEFFF005A8AF40F1C2354E46DDADE8320E3FC9FCE8DE24C0233EDFDE39E7F2A
          536986C8723038E3A1EDFE7BD3DA1DCC0F1C1F4A00E1FE3D7C04F07FED25F0E6
          F7C27E34D0EDB5ED16F7E668E55F9E07E8AF1B0F992419E18107EBD2BF27FF00
          6B8FF8207F8FFE126A177A9FC2BBC1E39F0D8DD247A75CBA43A9DAAF5DA09C24
          B8CF518271F76BF65C42C183061BB183F2F5F5FE54341B9402DCF76C726BC3CE
          387B059946D888FBCB692D1AFEBCCFADE17E36CD721A97C14FDC7BC25AC5FCBA
          3F34D799FCC678D7C0BE22F85FABC961E26D035AD02F21628D15F5A3C2720E0E
          09001FC2B361D4A3C70E3F3AFE9C7C4FE01D1BC6D6C60D674AD33568580063BC
          B449D31E986078AF813F691FF837F349F8E7F1D35FF17E93F102CBC1FA76B122
          3C1A2DA78555EDEC42C6A8402B7518392A58E11796E95F9A66DE1D62692E6C14
          BDA6BB689A5DEEDD8FDF7873C72CBF112F679AD3F6165F12E6926F4D2D18B6BB
          F6F33F24E2D4E31D5D47E357B49B99356BB4B6B382E6F6E6438586DE269247FA
          00335FA56DFF0006D644E854FC62500FF77C2383FF00A5B5F72FEC7FFB1D687F
          B267C0FD07C2308D335ABDD1E168E6D5FF00B2D2D67BE63233EF6019D810180E
          5DBEE8E7B57065BE1DE3EBD471C62F651B6F78CAFE56523D9CF3C71C9707414F
          2C7F589B76E5B4E1656DEF285BCACB53F1A7E09FFC139BE39FC79685F45F016A
          1A6584D8C5FEB47EC50807BE1FE63F829AFB73F66FFF008202E83A3B5AEA5F15
          FC4577E2BB95218E8FA6E6D6C14E33877C891C76206DFAD7E8BADB8503A12063
          9E9F952AC202AE704A8C74AFBECAFC3FCAB08D4E717524BF9B6FBBFCEE7E33C4
          5E34F11667174A8C95083E90DFFF00027AFDD6303E1C7C30F0FF00C26F0B5BE8
          7E18D174CF0FE9365F2436B6102431C63DC01C9F73CFF3ADA708461C6406C9DD
          80178EFDBBFEB52A42114004E074CF34AB190BF7893DCFAD7DB46118A518AB24
          7E4B52A4EA49CE6EEDEEDEAD90A908ED850C0E718500E0119FF3ED4A8AAA9803
          0CBD40CF1E9C7E152B47B940383D8E46734C5B628F90E7B751F9D51037ED507A
          A7E5FF00D6A2A5C3FF00793FEF9FFEBD1401FFD9}
        mmHeight = 25400
        mmLeft = 3704
        mmTop = 0
        mmWidth = 29898
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 2117
        mmTop = 24342
        mmWidth = 194734
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ausencias encontradas na base local'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5757
        mmLeft = 60983
        mmTop = 12700
        mmWidth = 86614
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2684
        mmTop = 26988
        mmWidth = 12361
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 27237
        mmTop = 27252
        mmWidth = 9821
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 105851
        mmTop = 27517
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 140076
        mmTop = 27252
        mmWidth = 5334
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Inserido em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 166093
        mmTop = 27252
        mmWidth = 19981
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 2910
        mmTop = 32015
        mmWidth = 194734
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cod'
        DataPipeline = rrpipReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'rrpipReport'
        mmHeight = 4064
        mmLeft = 2117
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nome'
        DataPipeline = rrpipReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'rrpipReport'
        mmHeight = 4064
        mmLeft = 26194
        mmTop = 0
        mmWidth = 75406
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cpf'
        DataPipeline = rrpipReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'rrpipReport'
        mmHeight = 4064
        mmLeft = 105304
        mmTop = 0
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'rg'
        DataPipeline = rrpipReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'rrpipReport'
        mmHeight = 3979
        mmLeft = 138642
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'data_insercao'
        DataPipeline = rrpipReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'rrpipReport'
        mmHeight = 4064
        mmLeft = 165365
        mmTop = 0
        mmWidth = 30956
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 1588
        mmTop = 0
        mmWidth = 194734
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Impresso em '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4064
        mmLeft = 0
        mmTop = 2381
        mmWidth = 21505
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 22490
        mmTop = 2646
        mmWidth = 32279
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 174890
        mmTop = 2381
        mmWidth = 21960
        BandType = 8
      end
    end
  end
  object rrpipReport: TppDBPipeline
    DataSource = dsReport
    UserName = 'rrpipReport'
    Left = 55
    Top = 254
  end
  object qryReport: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select c.codigo as cod, c.nome, c.cnpj as cpf, c.ie as rg, c.dat' +
        'a as data_insercao'
      'from tbcliente c'
      'where 1 = 2')
    Params = <>
    Left = 56
    Top = 140
  end
  object dsReport: TDataSource
    DataSet = cdsReport
    Left = 56
    Top = 197
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'dtpReport'
    Left = 58
    Top = 367
  end
  object dtpReport: TDataSetProvider
    DataSet = qryReport
    Left = 56
    Top = 421
  end
  object qryAux: TZQuery
    Params = <>
    Left = 760
    Top = 4
  end
end
