unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm14 = class(TForm)
    img1: TImage;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    Profil1: TMenuItem;
    Logout1: TMenuItem;
    Obat1: TMenuItem;
    Pembelian1: TMenuItem;
    ExpObat1: TMenuItem;
    DetailBeli1: TMenuItem;
    procedure Obat1Click(Sender: TObject);
    procedure Pembelian1Click(Sender: TObject);
    procedure ExpObat1Click(Sender: TObject);
    procedure DetailBeli1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit5, Unit8, Unit12, Unit11;

{$R *.dfm}

procedure TForm14.Obat1Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm14.Pembelian1Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm14.ExpObat1Click(Sender: TObject);
begin
Form11.show;
end;

procedure TForm14.DetailBeli1Click(Sender: TObject);
begin
Form12.show;
end;

procedure TForm14.Logout1Click(Sender: TObject);
begin
if application.MessageBox('Yakin ingin logout?','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
begin
Form14.Close;
end;
end;

end.
