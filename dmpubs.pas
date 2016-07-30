unit dmpubs;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdmpub = class(TDataModule)
    ADOConnection: TADOConnection;
    tbooks: TADOTable;
    qbooktype: TADOQuery;
    dsBooktype: TDataSource;
    ADODataSet1: TADODataSet;
    qbooks: TADOQuery;
    dsbooks: TDataSource;
    qbooktypeType: TStringField;
    tbookstitle: TStringField;
    tbooksprice: TBCDField;
    tbooksadvance: TBCDField;
    tbooksnotes: TStringField;
    tbookstitle_id: TStringField;
    tbookstype: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmpub: Tdmpub;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
