{*****************************************************************************}
{                                                                             }
{                         Ricerca Posti Adiacenti                             }
{                                                                             }
{      Gianmaria G.                                                           }
{                                                                             }
{      Corso Programmazione ERP @ Istituto Cappellari                         }
{                                                                             }
{      8/6/2017                                                               }
{                                                                             }
{*****************************************************************************}

unit PFindSeats;

interface

uses
  IFindSeats, IFreeSeats, IModel, Model, Data.DB;

type
  TFindSeats = class (TInterfacedObject, IFindSeatsP)
  private
    FFreeSeatsView: IFreeSeatsView;
    FModel: IModelDB;
    //procedure SendSeatsNumberToModel(ASeats: string);
  public
    constructor Create (AFreeSeatsView : IFreeSeatsView);
    destructor Destroy; override;
    procedure SearchFreeSeats{SendSeatsNumberToModel(ASeats: string)};
    //procedure SendQueryToView (ADataSource : TDataSource);
  end;

implementation

//var
 //FFreeSeatsView : IFreeSeatsView;
 //FModel : TModel;

{ TFindSeats }

constructor TFindSeats.Create(AFreeSeatsView: IFreeSeatsView);
begin
  FFreeSeatsView := AFreeSeatsView;
  FModel:= TModel.Create(self);
end;

// passo alla view il datasource da collegare alla grid
//procedure TFindSeats.SendQueryToView(ADataSource: TDataSource);
//begin
//  FFreeSeatsView.ReciveDBGridDataModule(ADataSource);
//end;

// passo al model il numero di posti da cercare
destructor TFindSeats.Destroy;
begin
  inherited;
end;

procedure TFindSeats.SearchFreeSeats;
begin
  FFreeSeatsView.SetResult(FModel.FindSeatsNumber(FFreeSeatsView.GetSeatsNumber));
end;

//procedure TFindSeats.SendSeatsNumberToModel(ASeats: string);
//begin
//  FModel.FindSeatsNumber(ASeats);
//end;

end.
