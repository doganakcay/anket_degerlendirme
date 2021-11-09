unit uanket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,Vcl.Grids, Vcl.DBGrids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxContainer, DBAccess, Ora, MemDS, OraCall, Vcl.StdCtrls, RzButton,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzBckgnd, Vcl.ComCtrls,Vcl.Dialogs,
  cxEditRepositoryItems, cxRadioGroup, dxCustomTileControl, dxTileControl,cxgridexportlink,
  Vcl.ExtCtrls, Vcl.Menus, cxLabel, cxButtons, dxCore, cxDateUtils, cxCalendar,
  cxDBLabel, Vcl.DBCtrls, cxGroupBox, frxClass, frxDBSet, dxDateRanges   ;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    OraSession1: TOraSession;
    DSANKET: TOraDataSource;
    qdegerlendirme: TOraQuery;
    dsdegerlendirme: TOraDataSource;
    OraSQL1: TOraSQL;
    qsorular: TOraQuery;
    dssorular: TOraDataSource;
    QLOOP_ANKET: TOraQuery;
    DSLOOP_ANKET: TOraDataSource;
    qcevapanahtari: TOraQuery;
    dsqcevapanahtari: TOraDataSource;
    qanket: TOraQuery;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1RadioGroupItem1: TcxEditRepositoryRadioGroupItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    SaveDialog1: TSaveDialog;
    cxEditStyleController1: TcxEditStyleController;
    SPANKET_SORGU: TOraStoredProc;
    QANK_DEG: TOraQuery;
    DSANK_DEG: TOraDataSource;
    QANKET_KAYIT: TOraQuery;
    DSANKET_KAYIT: TOraDataSource;
    QSORU_KAYIT: TOraQuery;
    DSSORU_KAYIT: TOraDataSource;
    QCEVAP_ANAHTAR_KAYIT: TOraQuery;
    DSCEVAP_ANAHTAR_KAYIT: TOraDataSource;
    QGENEL_SORGU: TOraQuery;
    qtoplam: TOraQuery;
    dstoplam: TOraDataSource;
    cxGroupBox4: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel7: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxLabel9: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ANKET_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ANKET_SORU_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SIKLAR: TcxGridDBColumn;
    cxGrid1DBTableView1SIK_PUAN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel10: TcxLabel;
    cxGroupBox7: TcxGroupBox;
    cxLabel1: TcxLabel;
    tdanket_baslik: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    tdSoruSayisi: TcxTextEdit;
    lbSoru: TcxLabel;
    ch: TcxCheckBox;
    cxGroupBox8: TcxGroupBox;
    cxLabel2: TcxLabel;
    tdsoru: TcxTextEdit;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox9: TcxGroupBox;
    cxLabel3: TcxLabel;
    tdcevap: TcxTextEdit;
    cxLabel4: TcxLabel;
    tdpuan: TcxTextEdit;
    btncevap: TcxButton;
    cxButton5: TcxButton;
    cxGroupBox10: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    cxGridDBTableView1Column15: TcxGridDBColumn;
    cxGridDBTableView1Column16: TcxGridDBColumn;
    cxGridDBTableView1Column17: TcxGridDBColumn;
    cxGridDBTableView1Column18: TcxGridDBColumn;
    cxGridDBTableView1Column19: TcxGridDBColumn;
    cxGridDBTableView1Column20: TcxGridDBColumn;
    cxGridDBTableView1Column21: TcxGridDBColumn;
    cxGridDBTableView1Column22: TcxGridDBColumn;
    cxGridDBTableView1Column23: TcxGridDBColumn;
    cxGridDBTableView1Column24: TcxGridDBColumn;
    cxGridDBTableView1Column25: TcxGridDBColumn;
    cxGridDBTableView1Column26: TcxGridDBColumn;
    cxGridDBTableView1Column27: TcxGridDBColumn;
    cxGridDBTableView1Column28: TcxGridDBColumn;
    cxGridDBTableView1Column29: TcxGridDBColumn;
    cxGridDBTableView1Column30: TcxGridDBColumn;
    cxGridDBTableView1Column31: TcxGridDBColumn;
    cxGridDBTableView1Column32: TcxGridDBColumn;
    cxGridDBTableView1Column33: TcxGridDBColumn;
    cxGridDBTableView1Column34: TcxGridDBColumn;
    cxGridDBTableView1Column35: TcxGridDBColumn;
    cxGridDBTableView1Column36: TcxGridDBColumn;
    cxGridDBTableView1Column37: TcxGridDBColumn;
    cxGridDBTableView1Column38: TcxGridDBColumn;
    cxGridDBTableView1Column39: TcxGridDBColumn;
    cxGridDBTableView1Column40: TcxGridDBColumn;
    cxGridDBTableView1Column41: TcxGridDBColumn;
    cxGridDBTableView1Column42: TcxGridDBColumn;
    cxGridDBTableView1Column43: TcxGridDBColumn;
    cxGridDBTableView1Column44: TcxGridDBColumn;
    cxGridDBTableView1Column45: TcxGridDBColumn;
    cxGridDBTableView1Column46: TcxGridDBColumn;
    cxGridDBTableView1Column47: TcxGridDBColumn;
    cxGridDBTableView1Column48: TcxGridDBColumn;
    cxGridDBTableView1Column49: TcxGridDBColumn;
    cxGridDBTableView1Column50: TcxGridDBColumn;
    cxGridDBTableView1Column51: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBLabel1: TcxDBLabel;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    RzBitBtn2: TRzBitBtn;
    cxDateEdit1: TcxDateEdit;
    cxLabel6: TcxLabel;
    chTop_denek: TcxCheckBox;
    lbdeneksayisi: TcxLabel;
    tddeneksayisi: TcxTextEdit;
    cxLabel8: TcxLabel;
    RzBitBtn5: TRzBitBtn;
    cxGroupBox2: TcxGroupBox;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    tdtarih_ara_son: TcxDateEdit;
    tdtarih_ara_ilk: TcxDateEdit;
    cxLabel11: TcxLabel;
    lobAnket: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxLabel15: TcxLabel;
    cxGroupBox11: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3ANKET_SORU_ID: TcxGridDBColumn;
    cxGridDBTableView3SORU: TcxGridDBColumn;
    cxGridDBTableView3CEVAP: TcxGridDBColumn;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    qraporlama: TOraQuery;
    RzBitBtn6: TRzBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QGENEL_BILGI: TOraQuery;
    FRXGENEL_BILGI: TfrxDBDataset;
    tdanket_sayisi: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    Panel1: TPanel;
    QALTTOPLAM: TOraQuery;
    DSALTTOPLAM: TOraDataSource;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    frxdeg_sonucu: TfrxDBDataset;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure dsdegerlendirmeDataChange(Sender: TObject; Field: TField);
    procedure cxGridDBTableView3CEVAPGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure dsdegerlendirmeStateChange(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure DSANK_DEGDataChange(Sender: TObject; Field: TField);
    procedure qdegerlendirmeAfterPost(DataSet: TDataSet);
    procedure DSSORU_KAYITDataChange(Sender: TObject; Field: TField);
    procedure chClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tdSoruSayisiKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure btncevapClick(Sender: TObject);
    procedure tdpuanKeyPress(Sender: TObject; var Key: Char);
    procedure DSANKET_KAYITStateChange(Sender: TObject);
    procedure DSSORU_KAYITStateChange(Sender: TObject);
    procedure DSCEVAP_ANAHTAR_KAYITStateChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure denek_ekle;
    procedure chTop_denekClick(Sender: TObject);
    procedure tddeneksayisiKeyPress(Sender: TObject; var Key: Char);
    procedure lobAnketPropertiesChange(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    Procedure Anket_ac;
    procedure RzBitBtn5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OraSession1AfterConnect(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure cxGrid4Exit(Sender: TObject);
  private
    { Private declarations }
  public
   toplam_sorgu,rapor_sorgu:string;
     USR,PSW,SRV,KUL,SIF:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.chClick(Sender: TObject);
begin
if ch.Checked=true then
begin
 tdSoruSayisi.Visible:=true;
 lbSoru.Visible:=true;
end  else
begin
 tdSoruSayisi.Visible:=false;
 lbSoru.Visible:=false;

end;

end;

procedure TForm1.cxButton1Click(Sender: TObject);
VAR
ANKET_NO,I:INTEGER;

begin
if tdanket_baslik.Text='' then
begin
  SHowmessage('Anket Ba�l��� Girmediniz');
  exit;
end;
if tdanket_sayisi.Text='' then
begin
 SHowmessage('Ayl�k Uygulanacak Asgari Anket Say�s�n� Giriniz');
 exit;
end;
if (CH.Checked=TRUE) AND (tdSoruSayisi.Text='')  then
BEGIN
  SHOWMESSAGE('Soru say�s�n� Giriniz ');
  exit;
END;
try
QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Text:='SELECT nvl(MAX(A.ANKET_ID),0)+1 CEVAP FROM DA_ANKET A '   ;
QGENEL_SORGU.ExecSQL;
ANKET_NO:=QGENEL_SORGU.FieldByName('CEVAP').AsInteger;
QGENEL_SORGU.Close;

OraSQL1.SQL.Clear;
OraSQL1.SQL.Text:='INSERT INTO DA_ANKET'+
                  ' (ANKET_ID, ANKET_BASLIK,ASGARI_ANKET) '+
                  ' VALUES '+
                  ' (:ANKET_ID, :ANKET_BASLIK,:ASGARI_ANKET)';

OraSQL1.Params[0].AsInteger:=ANKET_NO;
OraSQL1.Params[1].AsString:=tdanket_baslik.Text;
OraSQL1.Params[2].AsString:=tdanket_sayisi.Text;
OraSQL1.Execute;

if CH.Checked=TRUE then
BEGIN
OraSQL1.SQL.Clear;
OraSQL1.SQL.Text:='INSERT INTO DA_ANKET_SORULAR  '+
                  '(ANKET_SORU_ID, ANKET_ID, SORU) '+
                  ' VALUES '+
                  ' (:ANKET_SORU_ID, :ANKET_ID, :SORU) ';
                  for I := 1 to StrToInt(tdSoruSayisi.Text) do
                  BEGIN
                   OraSQL1.Params[0].AsInteger:=I;
                   OraSQL1.Params[1].AsInteger:= ANKET_NO;
                   OraSQL1.Params[2].AsString:='Soru '+inttostr(i);
                   OraSQL1.Execute;

                  END;



END;
 OraSession1.Commit;
except
 OraSession1.Rollback;
end;

QANKET_KAYIT.Refresh;
QSORU_KAYIT.Refresh;
QLOOP_ANKET.Refresh;
tdanket_baslik.Text:='';
tdSoruSayisi.Text:='';
end;

procedure TForm1.cxButton2Click(Sender: TObject);
VAR
SORU_SIRA:INTEGER;
begin

if QANKET_KAYIT.Active=false then
begin
showmessage('Anket Se�ilmedi ');
 exit;
end;
if QANKET_KAYIT.RecordCount=0 then
begin
showmessage('Anket Se�ilmedi ');
exit;
end;
if tdsoru.Text='' then
begin
  showmessage('Soru Girmediniz');
end;
TRY
QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Text:= 'SELECT nvl(max(t.anket_soru_id), 0) + 1 cevap  '+
                        ' FROM da_anket_sorular t '+
                        ' where t.anket_id = :ank_id  ';
QGENEL_SORGU.Params[0].AsInteger:=QANKET_KAYIT.FieldByName('anket_id').AsInteger;
QGENEL_SORGU.ExecSQL;
SORU_SIRA:= QGENEL_SORGU.FieldByName('CEVAP').AsInteger;


OraSQL1.SQL.Clear;
OraSQL1.SQL.Text:='INSERT INTO DA_ANKET_SORULAR  '+
                  '(ANKET_SORU_ID, ANKET_ID, SORU) '+
                  ' VALUES '+
                  ' (:ANKET_SORU_ID, :ANKET_ID, :SORU) ';

                   OraSQL1.Params[0].AsInteger:=SORU_SIRA;
                   OraSQL1.Params[1].AsInteger:= QANKET_KAYIT.FieldByName('anket_id').AsInteger;
                   OraSQL1.Params[2].AsString:=tdsoru.Text;
                   OraSQL1.Execute;
OraSession1.Commit;
QSORU_KAYIT.Refresh;
EXCEPT
OraSession1.Rollback;

END;

tdsoru.Text:='';


end;

procedure TForm1.cxButton3Click(Sender: TObject);
begin
if QANKET_KAYIT.State in [dsEdit,dsInsert] then
begin
  QANKET_KAYIT.Post;
end;
if QSORU_KAYIT.State in [dsEdit,dsInsert] then
begin
  QSORU_KAYIT.Post;
end;
if QCEVAP_ANAHTAR_KAYIT.State in [dsEdit,dsInsert] then
begin
  QCEVAP_ANAHTAR_KAYIT.Post;
end;

          OraSession1.Commit;
          if QANKET_KAYIT.Active=true then
          QANKET_KAYIT.Refresh;

          if QSORU_KAYIT.Active=true then
           QSORU_KAYIT.Refresh;

          if QCEVAP_ANAHTAR_KAYIT.Active=true then
            QCEVAP_ANAHTAR_KAYIT.Refresh;

          if qdegerlendirme.Active=true then
            qdegerlendirme.Refresh;

          if qcevapanahtari.Active=true then
            qcevapanahtari.Refresh;

          if qanket.Active=true then
            qanket.Refresh;

          if QLOOP_ANKET.Active=true then
            QLOOP_ANKET.Refresh;

          if qsorular.Active=true then
            qsorular.Refresh;

          if QANK_DEG.Active=true then
            QANK_DEG.Refresh;


end;


procedure TForm1.cxButton6Click(Sender: TObject);
begin
QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Add('select count(*) CEVAP from  DA_ANKET_DEGERLERDIRME T WHERE T.ANKET_ID=:A_ID and T.ANKET_SORU_ID:=s_ID AND T.CEVAP=:SIK');
QGENEL_SORGU.Params[0].AsString:=QCEVAP_ANAHTAR_KAYIT.FieldByName('ANKET_ID').AsString;
QGENEL_SORGU.Params[1].AsString:=QCEVAP_ANAHTAR_KAYIT.FieldByName('ANKET_SORU_ID').AsString;
QGENEL_SORGU.Params[2].AsString:=QCEVAP_ANAHTAR_KAYIT.FieldByName('SIKLAR').AsString;
QGENEL_SORGU.Open;
if QGENEL_SORGU.FieldByName('CEVAP').AsInteger>0 then
BEGIN
  Showmessage('Anket de�erlendirmede kullan�ld���ndan silemezsiniz �nce �lgili Anketi Siliniz');
  exit;
END;
QCEVAP_ANAHTAR_KAYIT.Delete;
OraSession1.Commit;
end;

procedure TForm1.cxButton7Click(Sender: TObject);
begin
QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Add('select count(*) CEVAP from  DA_ANKET_DEGERLERDIRME T WHERE T.ANKET_ID=:A_ID and T.ANKET_SORU_ID:=s_ID ');
QGENEL_SORGU.Params[0].AsString:=QSORU_KAYIT.FieldByName('ANKET_ID').AsString;
QGENEL_SORGU.Params[1].AsString:=QSORU_KAYIT.FieldByName('ANKET_SORU_ID').AsString;
QGENEL_SORGU.Open;
if QGENEL_SORGU.FieldByName('CEVAP').AsInteger>0 then
BEGIN
  Showmessage('Anket de�erlendirmede kullan�ld���ndan silemezsiniz �nce �lgili Anketi Siliniz');
  exit;
END;

QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Add('select count(*) CEVAP from  DA_ANKET_CVP_ANAHTAR T WHERE T.ANKET_ID=:A_ID and T.ANKET_SORU_ID:=s_ID ');
QGENEL_SORGU.Params[0].AsString:=QSORU_KAYIT.FieldByName('ANKET_ID').AsString;
QGENEL_SORGU.Params[1].AsString:=QSORU_KAYIT.FieldByName('ANKET_SORU_ID').AsString;
QGENEL_SORGU.Open;
if QGENEL_SORGU.FieldByName('CEVAP').AsInteger>0 then
BEGIN
  Showmessage('�ncelikle Cevap Anahtar�n� Siliniz');
  exit;
END;



end;

procedure TForm1.cxButton8Click(Sender: TObject);
begin
QGENEL_SORGU.Close;
QGENEL_SORGU.SQL.Clear;
QGENEL_SORGU.SQL.Add('select count(*) cevap from  da_anket_sorular T WHERE T.ANKET_ID=:A_ID  ');
QGENEL_SORGU.Params[0].AsString:=QANKET_KAYIT.FieldByName('ANKET_ID').AsString;
QGENEL_SORGU.Open;
if QGENEL_SORGU.FieldByName('CEVAP').AsInteger>0 then
BEGIN
  Showmessage('�ncelikle Ankete Ait Sorular� siliniz ');
  exit;
END;
end;

procedure TForm1.chTop_denekClick(Sender: TObject);
begin
if chTop_denek.Checked=true then
begin
 tddeneksayisi.Visible:=true;
 lbdeneksayisi.Visible:=true;
end  else
begin
 tddeneksayisi.Visible:=false;
 lbdeneksayisi.Visible:=false;
end;
end;

procedure TForm1.Anket_ac;
VAR
I:INTEGER;
//a:TcxGridDBColumn;

//Sum  : TcxDataSummaryItem;

begin

if lobAnket.Text='' then
begin
  showmessage('Anket Se�iniz');
  exit;
end;


QANKET.Close;
QANKET.Params[0].AsString:=lobAnket.EditValue;
QANKET.Open;


SPANKET_SORGU.Params[1].AsString:=qanket.FieldByName('ANKET_ID').AsString;
SPANKET_SORGU.Execute;


//SHOWMESSAGE(SPANKET_SORGU.Params[0].AsString);

if LENGTH( SPANKET_SORGU.Params[0].AsString)<100 then   EXIT;

if (tdtarih_ara_ilk.Text<>'') and (tdtarih_ara_son.Text<>'')  then
begin


QANK_DEG.Close;
QANK_DEG.SQL.Clear;
QANK_DEG.SQL.Text:=SPANKET_SORGU.Params[0].AsString;
QANK_DEG.SQL.Add(' where to_date(b.tarih,'+QuotedStr('dd.mm.yyyy')+' )  between to_date(:ilk_tar,'+
QuotedStr('dd.mm.yyyy')+') and to_date(:sontar,'+QuotedStr('dd.mm.yyyy')+')')  ;
QANK_DEG.Params[0].AsString:=tdtarih_ara_ilk.Text;
QANK_DEG.Params[1].AsString:=tdtarih_ara_son.Text;

QANK_DEG.Open;

QALTTOPLAM.Close;
QALTTOPLAM.SQL.Clear;
QALTTOPLAM.SQL.Text:=SPANKET_SORGU.Params[2].AsString;
QALTTOPLAM.SQL.Add(' where to_date(A.tarih,'+QuotedStr('dd.mm.yyyy')+' )  between to_date(:ilk_tar,'+
QuotedStr('dd.mm.yyyy')+') and to_date(:sontar,'+QuotedStr('dd.mm.yyyy')+')')  ;
QALTTOPLAM.Params[0].AsString:=tdtarih_ara_ilk.Text;
QALTTOPLAM.Params[1].AsString:=tdtarih_ara_son.Text;

QALTTOPLAM.Open;

end else
begin

QANK_DEG.Close;
QANK_DEG.SQL.Clear;
QANK_DEG.SQL.Text:=SPANKET_SORGU.Params[0].AsString;
QANK_DEG.Open;

QALTTOPLAM.Close;
QALTTOPLAM.SQL.Clear;
QALTTOPLAM.SQL.Text:=SPANKET_SORGU.Params[2].AsString;
QALTTOPLAM.Open;


end;



for I := 0 to QANK_DEG.FieldCount-1 do
begin
    cxGridDBTableView1.Columns[i].Caption:=QANK_DEG.Fields[i].FieldName;
    cxGridDBTableView1.Columns[i].DataBinding.FieldName:=QANK_DEG.Fields[i].FieldName;
    cxGridDBTableView1.Columns[i].DataBinding.ValueType:='string';
    cxGridDBTableView1.Columns[I].Visible:=true;



  if I IN [0,1] then
    BEGIN
    cxGridDBTableView1.Columns[i].Width:=70;
    END ELSE
    BEGIN
    cxGridDBTableView1.Columns[i].Width:=30;
  END;

//  if i=0  then
//  begin
//        Sum := cxGridDBTableView1.DataController.Summary.FooterSummaryItems.Add;
//        Sum.Format := ',0.##';
//        Sum.Kind   := skCount;
//        TcxGridDBTableSummaryItem(Sum).Column    :=cxGridDBTableView1.Columns[i];
//  end;


//  if QANK_DEG.FieldCount-1=i then
//  begin
//
//        Sum := cxGridDBTableView1.DataController.Summary.FooterSummaryItems.Add;
//        Sum.Format := ',0.##';
//        Sum.Kind   := skSum;
//        TcxGridDBTableSummaryItem(Sum).Column    :=cxGridDBTableView1.Columns[i];
//        cxGridDBTableView1.Columns[i].Width:=70;
//        if cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]<>null then
//        begin
//         showmessage(inttostr(    cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]));
//        end;
//        cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1] :=10;
//  end;

end;



for I := QANK_DEG.FieldCount to  cxGridDBTableView1.ColumnCount-1 do
begin

 cxGridDBTableView1.Columns[i].Caption:='';
  cxGridDBTableView1.Columns[i].DataBinding.FieldName:='';
  cxGridDBTableView1.Columns[i].DataBinding.ValueType:='string';
  cxGridDBTableView1.Columns[I].Visible:=FALSE;

end;


end;

procedure TForm1.btncevapClick(Sender: TObject);
var
cevap_id:integer;
i: Integer;

begin





TRY
  if QSORU_KAYIT.Active=false then
  begin
  showmessage('Soru Se�ilmemi� ');
  exit;
  end;

  if QSORU_KAYIT.RecordCount=0 then
  begin
  showmessage('Soru Se�ilmemi� ');
  exit;
  end;

  if (tdcevap.Text='') or (tdpuan.Text='') then
  begin
  showmessage('Cevap veya Puan De�eri Girilmemi�tir  ');
  exit;
  end;

         for I := 0 to cxGridDBTableView6.Controller.SelectedRowCount - 1 do
             begin

              QGENEL_SORGU.Close;
              QGENEL_SORGU.SQL.Clear;
              QGENEL_SORGU.SQL.Text:= 'SELECT nvl(max(t.anket_cvp_an_id), 0) + 1 cevap   '+
                                      ' FROM da_anket_cvp_anahtar t';
              QGENEL_SORGU.ExecSQL;
              cevap_id:= QGENEL_SORGU.FieldByName('cevap').AsInteger;


              OraSQL1.SQL.Clear;
              OraSQL1.SQL.Text:='INSERT INTO DA_ANKET_CVP_ANAHTAR   '+
                                ' (ANKET_CVP_AN_ID, ANKET_SORU_ID, ANKET_ID, SIKLAR, SIK_PUAN)  '+
                                ' VALUES   '+
                                ' (:ANKET_CVP_AN_ID, :ANKET_SORU_ID, :ANKET_ID, :SIKLAR, :SIK_PUAN)';

                                 OraSQL1.Params[0].AsInteger:=cevap_id;
                                  {
                                 OraSQL1.Params[1].AsInteger:= QSORU_KAYIT.FieldByName('Anket_soru_id').AsInteger;
                                 OraSQL1.Params[2].AsInteger:=QANKET_KAYIT.FieldByName('anket_id').AsInteger; }

                                OraSQL1.Params[1].AsInteger:= cxGridDBTableView6.Controller.SelectedRows[i].Values[1] ;
                                 OraSQL1.Params[2].AsInteger:= cxGridDBTableView6.Controller.SelectedRows[i].Values[0]   ;
                                 OraSQL1.Params[3].AsString:=tdcevap.Text;
                                 OraSQL1.Params[4].AsString:=tdpuan.Text;
                                 OraSQL1.Execute;

              oraSession1.Commit;
              qcevapanahtari.Refresh;



            end;

QCEVAP_ANAHTAR_KAYIT.Refresh;

EXCEPT
OraSession1.Rollback;
END;

 tdcevap.Text:='';
 tdpuan.Text:='';

end;

procedure TForm1.cxGrid4Exit(Sender: TObject);
begin
qdegerlendirme.Post;
OraSession1.Commit;
end;

procedure TForm1.cxGridDBTableView3CEVAPGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
//var

//ARepositoryItem:TcxEditRepositoryRadioGroupItem ;
//i,X:integer;
begin
{
   cxEditRepository1.Clear;
 // i:=cxEditRepository1.Count;
 //  showmessage(inttostr(ARecord.Index));

  QANKET_ARA.Close;
  QANKET_ARA.Params[0].AsString:='1';
  QANKET_ARA.Open;



 for X := 1 to QANKET_ARA.RecordCount do
 BEGIN

 ARepositoryItem := TcxEditRepositoryRadioGroupItem.Create(Self);

  qcevap_an_ara.Close;
  qcevap_an_ara.Params[0].AsString:='1';
  qcevap_an_ara.Params[1].AsString:=inttostr(ARecord.Index+1);
  qcevap_an_ara.Open;
           qcevap_an_ara.First;
          while not qcevap_an_ara.eof do
            begin


                ARepositoryItem.Repository := cxEditRepository1;
                ARepositoryItem.Properties.Items.Add() ;
                ARepositoryItem.Properties.Items[qcevap_an_ara.RecNo-1].caption:=qcevap_an_ara.FieldByName('SIKLAR').AsString;
                ARepositoryItem.Properties.Items[qcevap_an_ara.RecNo-1].value:=qcevap_an_ara.FieldByName('SIKLAR').AsString;
                qcevap_an_ara.Next;
          end;
      //    SHOWMESSAGE(inttostr(cxEditRepository1.Count));
 END;


  memo1.Lines.Add(inttostr(cxEditRepository1.Count));
  //memo1.Lines.Add(inttostr(cxEditRepository1.Count));
     AProperties:= cxEditRepository1.Items[ARecord.Index].Properties;
  }

end;

procedure TForm1.denek_ekle;
VAR
XAN_DEG_ID:INTEGER;
begin
try



              QGENEL_SORGU.Close;
              QGENEL_SORGU.SQL.Clear;
              QGENEL_SORGU.SQL.Text:='select nvl(max(t.anket_deg_id),0)+1 cevap from DA_ANKET_DEGERLERDIRME t '   ;
              QGENEL_SORGU.ExecSQL;
              XAN_DEG_ID:=QGENEL_SORGU.FieldByName('CEVAP').AsInteger;
              QGENEL_SORGU.Close;



              OraSQL1.SQL.Clear ;
              OraSQL1.SQL.Add('INSERT INTO DA_ANKET_DEGERLERDIRME ');
              OraSQL1.SQL.Add(' (ANKET_DEG_ID, ANKET_SORU_ID, ANKET_ID)');
              OraSQL1.SQL.Add(' VALUES    (:ANKET_DEG_ID, :ANKET_SORU_ID, :ANKET_ID) ');



              QGENEL_SORGU.Close;
              QGENEL_SORGU.SQL.Clear;
              QGENEL_SORGU.SQL.Text:='select * from  DA_ANKET_SORULAR T WHERE T.ANKET_ID=:XANK_ID'   ;
              QGENEL_SORGU.Params[0].AsInteger:= qanket.FieldByName('anket_id').asInteger;
              QGENEL_SORGU.open  ;


              QGENEL_SORGU.First;


        while not QGENEL_SORGU.Eof do
        begin

                 OraSQL1.Params[0].AsInteger:=XAN_DEG_ID;
                 OraSQL1.Params[1].AsString:=QGENEL_SORGU.FieldByName('ANKET_SORU_ID').AsString;
                 OraSQL1.Params[2].AsString:=QGENEL_SORGU.FieldByName('ANKET_ID').AsString;
                 OraSQL1.Execute;
                 QGENEL_SORGU.Next;
        end;


    //    SHOWMESSAGE(inttostr(XAN_DEG_ID)+'  '+ qsorular.FieldByName('ANKET_ID').AsString+' '+  cxDateEdit1.Text);
OraSQL1.SQL.Clear ;
OraSQL1.SQL.Add('INSERT INTO DA_ANKET_DEG_BIL '+
                ' (ANKET_DEG_ID, ANKET_ID, TARIH, PUAN) '+
                ' VALUES  '+
                ' (:ANKET_DEG_ID, :ANKET_ID, :TARIH, :PUAN )');
OraSQL1.Params[0].AsInteger:= XAN_DEG_ID;
OraSQL1.Params[1].AsInteger:= qsorular.FieldByName('ANKET_ID').AsInteger;
OraSQL1.Params[2].AsString:=cxDateEdit1.Text;
OraSQL1.Params[3].AsInteger:=0;

OraSQL1.Execute;


OraSession1.Commit;


except
OraSession1.Rollback;
end;


qdegerlendirme.Refresh;
QANK_DEG.Refresh;

end;

procedure TForm1.DSANKET_KAYITStateChange(Sender: TObject);
begin
if QANKET_KAYIT.State in [dsEdit,dsInsert] then
begin
  cxButton3.Visible:=true;
end else
begin
  cxButton3.Visible:=false;
end;
end;

procedure TForm1.DSANK_DEGDataChange(Sender: TObject; Field: TField);
var
xsorgu:string;
begin

xsorgu:=toplam_sorgu;

 if QANK_DEG.FieldByName('D_ID').AsString<>qdegerlendirme.FieldByName('ANKET_DEG_ID').AsString then
 BEGIN

qdegerlendirme.Close;
qdegerlendirme.Params[0].AsString:=QANK_DEG.FieldByName('A_ID').AsString;
qdegerlendirme.Params[1].AsString:=QANK_DEG.FieldByName('D_ID').AsString;
qdegerlendirme.Open;

 END;


    if QANK_DEG.ParamCount=2 then
   begin


    xsorgu:= Format(xsorgu,[' and t.anket_id='+QuotedStr(lobAnket.EditValue)+
     ' and to_date(b.tarih,'+QUOTEDSTR('dd.mm.yyyy')+') between to_date('+quotedstr(QANK_DEG.Params[0].asstring)+
     ','+quotedstr('dd.mm.yyyy')+')'+
     ' and to_date('+ quotedstr(QANK_DEG.Params[1].asstring)+','+quotedstr('dd.mm.yyyy')+')']);
    end else
    begin
    xsorgu:=format(xsorgu,[' and t.anket_id='+QuotedStr(QANK_DEG.FieldByName('A_ID').AsString)]);

    end;


            if length( xsorgu)>0 then
            begin
                qtoplam.Close;
                qtoplam.SQL.Clear;
                qtoplam.SQL.Text:=xsorgu;
              //  Memo1.Lines.Text:=xsorgu;
                if LENGTH( qtoplam.SQL.Text)>0 then
          BEGIN

                qtoplam.Open;


          END;

end;


end;

procedure TForm1.DSCEVAP_ANAHTAR_KAYITStateChange(Sender: TObject);
begin
if QCEVAP_ANAHTAR_KAYIT.State in [dsEdit,dsInsert] then
begin
  cxButton5.Visible:=true;
end else
begin
  cxButton5.Visible:=false;
end;
end;

procedure TForm1.dsdegerlendirmeDataChange(Sender: TObject; Field: TField);
begin

qcevapanahtari.Close;
qcevapanahtari.Params[0].AsString:=qdegerlendirme.FieldByName('ANKET_ID').AsString;
qcevapanahtari.Params[1].AsString:=qdegerlendirme.FieldByName('ANKET_SORU_ID').AsString;
qcevapanahtari.Open;

end;

procedure TForm1.dsdegerlendirmeStateChange(Sender: TObject);
begin
  if qdegerlendirme.State in [dsEdit,dsInsert] then
  begin
  RzBitBtn3.Visible:=true;
  end
  else  begin
  RzBitBtn3.Visible:=false;

end;
end;

procedure TForm1.DSSORU_KAYITDataChange(Sender: TObject; Field: TField);
begin
QCEVAP_ANAHTAR_KAYIT.Close;
QCEVAP_ANAHTAR_KAYIT.Params[0].AsString:=QSORU_KAYIT.FieldByName('ANKET_ID').AsString;
QCEVAP_ANAHTAR_KAYIT.Params[1].AsString:=QSORU_KAYIT.FieldByName('ANKET_SORU_ID').AsString;
QCEVAP_ANAHTAR_KAYIT.Open;
end;

procedure TForm1.DSSORU_KAYITStateChange(Sender: TObject);
begin
if QSORU_KAYIT.State in [dsEdit,dsInsert] then
begin
  cxButton4.Visible:=true;
end else
begin
  cxButton4.Visible:=false;
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=1 ;
toplam_sorgu:=qtoplam.SQL.Text;
rapor_sorgu:=qraporlama.SQL.Text;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
VAR
A:string;
begin

    TRY
          A:= 'EVRAKTAKIP.exe'+' '+KUL+' '+SIF;
          WinExec(pansichar(A),SW_SHOWNORMAL);
    //  WinExec(pansichar('EVRAKTAKIP.exe'+' '+QuotedStr(KUL)+' '+QuotedStr(SIF)),SW_SHOWNORMAL);
      EXCEPT
      EXIT;
      END;
     Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

if ParamCount<5 then   Application.Terminate;

        USR:=ParamStr(1);
        PSW:=ParamStr(2);
        SRV:=ParamStr(3);
        KUL:=Paramstr(4);
        SIF:=Paramstr(5);

        OraSession1.Username:=USR;
        OraSession1.Password:=PSW;
        OraSession1.Server:=SRV;





//
//          OraSession1.Username:='DOGAN';
//          OraSession1.Password:='19721904';
//          OraSession1.Server:='10.42.112.2:1521:ORCL';

OraSession1.Open;


end;

procedure TForm1.lobAnketPropertiesChange(Sender: TObject);
begin
Anket_ac;
end;

procedure TForm1.OraSession1AfterConnect(Sender: TObject);
begin

QANKET_KAYIT.Open;
QSORU_KAYIT.Open;
QCEVAP_ANAHTAR_KAYIT.Open;
QLOOP_ANKET.Open;
qsorular.Open;
qcevapanahtari.Open;
qdegerlendirme.Open;
end;

procedure TForm1.qdegerlendirmeAfterPost(DataSet: TDataSet);
VAR
DENEK,SORU:INTEGER;
begin
DENEK:=QANK_DEG.RecNo;
SORU:=qdegerlendirme.RecNo;

QANK_DEG.Refresh;
QANK_DEG.RecNo:=DENEK;
qdegerlendirme.RecNo:=SORU;
end;

procedure TForm1.RzBitBtn1Click(Sender: TObject);
begin
Anket_ac;
end;

procedure TForm1.RzBitBtn2Click(Sender: TObject);
 VAR
 I :INTEGER;
begin

if cxDateEdit1.Text='' then
begin
  showmessage('Anket Tarihi Girilmemi�tir');
  exit;
end;

if QANKET.RecordCount<1 then
begin
  SHowmessage('Anket Se�ilmemi�');
  exit;
end;
if qsorular.RecordCount<1 then
begin
  SHowmessage('Ankete ait soru bulunamad�');
  exit;
end;

if chTop_denek.Checked=TRUE then
BEGIN
    if tddeneksayisi.Text='' then
    BEGIN
      SHOWMESSAGE('Denek say�s� girilmemi�');
      exit;
    END;
    for I := 1 to STRTOINT(tddeneksayisi.Text) do
    BEGIN
      denek_ekle;
    END;

END ELSE
BEGIN
denek_ekle;
END;
 cxDateEdit1.Text:='';
end;

procedure TForm1.RzBitBtn3Click(Sender: TObject);
begin
qdegerlendirme.Post;
OraSession1.Commit;
end;

procedure TForm1.RzBitBtn4Click(Sender: TObject);


begin

  ExportGridToXLSX('anket.xlsx',cxGrid4,true,true,true);


end;

procedure TForm1.RzBitBtn5Click(Sender: TObject);
begin

if (qdegerlendirme.Active=false)  and (qdegerlendirme.RecordCount=0) then
begin
  showmessage('Silinecek Kay�t Bulunamad�');
  exit;
end;

OraSQL1.SQL.Clear;
OraSQL1.SQL.Add('delete da_anket_degerlerdirme t where t.Anket_Deg_Id=:ank_deg_id and t.Anket_Id=:ank_id');
OraSQL1.Params[0].AsString:=QANK_DEG.FieldByName('D_ID').AsString;
OraSQL1.Params[1].AsString:=QANK_DEG.FieldByName('A_ID').AsString;
OraSQL1.Execute;

OraSQL1.SQL.Clear;
OraSQL1.SQL.Add('delete DA_ANKET_DEG_BIL t where t.Anket_Deg_Id=:ank_deg_id and t.Anket_Id=:ank_id');
OraSQL1.Params[0].AsString:=QANK_DEG.FieldByName('D_ID').AsString;
OraSQL1.Params[1].AsString:=QANK_DEG.FieldByName('A_ID').AsString;
OraSQL1.Execute;

OraSession1.Commit;
QANK_DEG.Refresh;

end;

procedure TForm1.RzBitBtn6Click(Sender: TObject);
var
xsorgu:string;
begin
if QANK_DEG.Active=false then exit;
if QANK_DEG.RecordCount=0 then exit;
xsorgu:=rapor_sorgu;


   if QANK_DEG.ParamCount=2 then
   begin
    xsorgu:= Format(xsorgu,[' and t.anket_id='+QuotedStr(lobAnket.EditValue)+
     ' and to_date(t.tarih,'+QUOTEDSTR('dd.mm.yyyy')+') between to_date('+quotedstr(QANK_DEG.Params[0].asstring)+
     ','+quotedstr('dd.mm.yyyy')+')'+
     ' and to_date('+ quotedstr(QANK_DEG.Params[1].asstring)+','+quotedstr('dd.mm.yyyy')+')']);
    end else
    begin
    xsorgu:=format(xsorgu,[' and t.anket_id='+QuotedStr(QANK_DEG.FieldByName('A_ID').AsString)]);

    end;


            if length( xsorgu)>0 then
            begin

                qraporlama.Close;
                qraporlama.SQL.Clear;
                qraporlama.SQL.Text:=xsorgu;
                if LENGTH( qraporlama.SQL.Text)>0 then
                BEGIN

                qraporlama.Open;
                END;
          end;

 frxReport1.ShowReport(TRUE);

end;

procedure TForm1.tddeneksayisiKeyPress(Sender: TObject; var Key: Char);
begin
if not (CharInSet(Key,['0'..'9',#8])) then
begin
 key:=#0;
 Beep;
end;
end;

procedure TForm1.tdpuanKeyPress(Sender: TObject; var Key: Char);
begin

if  not (CharInSet(Key,['0'..'9',#8])){NOT (KEY IN ['0'..'9',#8])} then
BEGIN
KEY:=#0;
END;

end;

procedure TForm1.tdSoruSayisiKeyPress(Sender: TObject; var Key: Char);
begin
if  not (CharInSet(Key,['0'..'9',#8])){not (key in ['0'..'9',#8])} then
begin
 key:=#0;
 Beep;
end;

end;

end.
