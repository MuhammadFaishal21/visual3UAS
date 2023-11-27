unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    img1: TImage;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    User1: TMenuItem;
    Obat1: TMenuItem;
    Kostumer1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembelian1: TMenuItem;
    Supplier1: TMenuItem;
    DetailJual1: TMenuItem;
    DetailBeli1: TMenuItem;
    N1: TMenuItem;
    Profil1: TMenuItem;
    Logout1: TMenuItem;
    procedure User1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure Obat1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit5;

{$R *.dfm}



procedure TForm2.User1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.Logout1Click(Sender: TObject);
begin
if application.MessageBox('Yakin ingin logout?','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
begin
Form2.Close;
end;
end;

procedure TForm2.Obat1Click(Sender: TObject);
begin
Form5.show;
end;

end.
