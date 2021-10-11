unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, SwitchLed, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    OnBox: TGroupBox;
    OffBox: TGroupBox;
    QuitBtn: TButton;
    ONLbl: TLabel;
    OFFLbl: TLabel;
    OnCombo: TComboBox;
    OffCombo: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure QuitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModifyColors(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  MainForm: TMainForm;
  OnLedComp, OffLedComp: TSwitchLed;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
 DoubleBuffered := True;
 OnBox.DoubleBuffered := True; // Evite les scintillements
 OffBox.DoubleBuffered := True;

 OnLedComp := TSwitchLed.Create(OnBox);
 OnLedComp.Left := 18; // Création dynamique du ON
 OnLedComp.Top := 25;
 OnLedComp.LedState := LedOn;

 OffLedComp := TSwitchLed.Create(OffBox);
 OffLedComp.Left := 18; // Création dynamique du OFF
 OffLedComp.Top := 25;
 OffLedComp.LedState := LedOff;
end;

procedure TMainForm.QuitBtnClick(Sender: TObject);
begin
 Close; // On appelle Close
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 OnLedComp.Free; // On libère les LEDs
 OffLedComp.Free;
end;

procedure TMainForm.ModifyColors(Sender: TObject);
Var
 TmpColor: TLedColor;
begin
 if Sender is TComboBox
 then // Si c'est bien un combobox alors ...
  begin
   TmpColor := Aqua; // Inutile mais evite des avertissements
   
   if not (TComboBox(Sender).ItemIndex in [0..8])
   then Exit;
   // Si l'itemindex est incorrect on s'en va

   TmpColor := OnLedComp.IntToLedColor(TComboBox(Sender).ItemIndex);
   // On définit la couleur selon l'itemindex du combobox sender

   case TComboBox(Sender).Tag of
    1: OnLedComp.OnColor := TmpColor; // Selon le tag du combobox on modifie le led correspondant
    2: OffLedComp.OffColor := TmpColor;
   end;
  end;
end;

end.
