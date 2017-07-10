unit PresenterCheckDigitCalculator;

interface

uses InterfaceCheckDigitCalculator, ModelCheckDigitCalculator, SysUtils;

type TPresenterCheckDigitCalculator = class
    private
        FViewCheckDigitCalculator: ICheckDigitCalculator;
        FModel: TModelCheckDigitCalculator;
    public
        procedure ShowCheckDigit();
    published
        constructor Create(AViewCheckDigitCalculator: ICheckDigitCalculator);
end;

implementation

{ TPresenterCheckDigitCalculator }

constructor TPresenterCheckDigitCalculator.Create(
  AViewCheckDigitCalculator: ICheckDigitCalculator);
begin
    FViewCheckDigitCalculator:=AViewCheckDigitCalculator
end;




procedure TPresenterCheckDigitCalculator.ShowCheckDigit;
var LIncompleteBarcode: string;
LCheckDigit: integer;
LCompleteBarcode: string;
begin
    LIncompleteBarcode:=FViewCheckDigitCalculator.GetIncompleteBarcode;
    if (LIncompleteBarcode <> '') then begin
        if (length(LIncompleteBarcode) < 12)
            then FViewCheckDigitCalculator.DisplayMessage('Il codice a barre deve essere di tipo EAN13 senza check digit (12 cifre)')
        else begin
            FModel:=TModelCheckDigitCalculator.Create;
            LCheckDigit:=FModel.GetCheckDigit(LIncompleteBarcode);
            FViewCheckDigitCalculator.SetCheckDigit(LCheckDigit);
            LCompleteBarcode:=LIncompleteBarcode+intToStr(LCheckDigit);
            FViewCheckDigitCalculator.SetCompleteBarcode(strToInt64(LCompleteBarcode));
        end;
    end;
end;




end.