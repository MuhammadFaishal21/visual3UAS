unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm13 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    e_1: TEdit;
    l3: TLabel;
    e_2: TEdit;
    l4: TLabel;
    e_3: TEdit;
    b1: TButton;
    b2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
     isAdmin: Boolean;
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  user:string;
implementation

{$R *.dfm}

procedure TForm13.b1Click(Sender: TObject);
begin
  if e_1.Text = '' then
    ShowMessage('ID BELUM DIISI')
  else if e_2.Text = '' then
    ShowMessage('USERNAME BELUM DIISI')
  else if e_3.Text = '' then
    ShowMessage('PASSWORD BELUM DIISI')
  else
  begin
    try
      if Form13.zqry1.Locate('id', e_1.Text, []) then
        ShowMessage('DATA SUDAH ADA DALAM SISTEM')
      else
      begin
        Form13.zqry1.SQL.Clear;
        Form13.zqry1.SQL.Add('INSERT INTO table_user (id, username, password, level) VALUES(:id, :username, :password, :level)');
        Form13.zqry1.ParamByName('id').AsString := e_1.Text;
        Form13.zqry1.ParamByName('username').AsString := e_2.Text;
        Form13.zqry1.ParamByName('password').AsString := e_3.Text;
        Form13.zqry1.ParamByName('level').AsString := 'user';  // Otomatis set sebagai user
        
        Form13.zqry1.ExecSQL;

        Form13.zqry1.SQL.Clear;
        Form13.zqry1.SQL.Add('SELECT * FROM table_user');
        Form13.zqry1.Open;

        ShowMessage('DATA BERHASIL DISIMPAN!');
      end;
    except
      on E: Exception do
        ShowMessage('Terjadi kesalahan: ' + E.Message);
    end;
  end;
end;


procedure TForm13.b2Click(Sender: TObject);
begin
  // Mengosongkan kolom input dan memberi pesan batal
  e_1.Text := '';
  e_2.Text := '';
  e_3.Text := '';
  ShowMessage('Pendaftaran dibatalkan.');
end;


end.
