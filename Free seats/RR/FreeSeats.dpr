program FreeSeats;

uses
  Vcl.Forms,
  VSeats in 'VSeats.pas' {FreeSeats},
  DataModule in 'DataModule.pas' {DataSeats: TDataModule},
  ISeats in 'ISeats.pas',
  PSeats in 'PSeats.pas',
  MSeats in 'MSeats.pas',
  IDataSeats in 'IDataSeats.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFreeSeats, FFreeSeats);
  //  Application.CreateForm(TDataSeats, DataSeats);
  Application.Run;
end.