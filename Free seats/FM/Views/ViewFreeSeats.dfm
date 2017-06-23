object FormFreeSeats: TFormFreeSeats
  Left = 0
  Top = 0
  Caption = 'Scegli posti'
  ClientHeight = 282
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblSeatsInput: TLabel
    Left = 24
    Top = 16
    Width = 261
    Height = 13
    Caption = 'Inserisci il numero di posti vicini che desideri acquistare'
  end
  object lblSeatsOutput: TLabel
    Left = 24
    Top = 72
    Width = 75
    Height = 13
    Caption = 'Posti disponibili:'
  end
  object edtSeatsInput: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btnSearch: TButton
    Left = 234
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Cerca'
    ModalResult = 1
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object strGridSeats: TStringGrid
    Left = 24
    Top = 91
    Width = 433
    Height = 174
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 2
    ColWidths = (
      60
      30
      78
      75
      140)
  end
end