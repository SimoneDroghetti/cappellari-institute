unit PresenterFreeSeats;

interface

uses InterfaceFreeSeats, ModelFreeSeats, TypeArrayOfArrayOfString;

type TPresenterFreeSeats = class
    private
        FViewFreeSeats: IFreeSeats;
        FModelFreeSeats: TModelFreeSeats;
    published
        constructor Create(AViewFreeSeats: IFreeSeats);
        procedure ShowSeats;
end;

implementation

{ TPresenterFreeSeats }

constructor TPresenterFreeSeats.Create(AViewFreeSeats: IFreeSeats);
begin
    FViewFreeSeats:=AViewFreeSeats;
end;

procedure TPresenterFreeSeats.ShowSeats;
var LNearbySeats: string;
LArrSeats: TArrayOfArrayString;
begin
    LNearbySeats:=FViewFreeSeats.GetNearbySeats;
    if (LNearbySeats <> '') then begin
        FModelFreeSeats:=TModelFreeSeats.Create(LNearbySeats);
        LArrSeats:=FModelFreeSeats.GetAvailableSeats;
        FViewFreeSeats.DisplayAvailableSeats(LArrSeats);
    end;
end;

end.