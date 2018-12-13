unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeeProcs, TeEngine, Chart, Series,
  ComCtrls, Vcl.Grids, VclTee.TeeGDIPlus;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    StringGrid1: TStringGrid;
    Button1: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Label12: TLabel;
    Chart1: TChart;
    Series2: TLineSeries;
    Series1: TLineSeries;
    Label13: TLabel;
    Button3: TButton;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Chart1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    procedure STEP;
    { Private declarations }
  public
    Function F1(x:double):double;
    Function F2(x:double):double;
    { Public declarations }
  end;

var                                   //�������� ���������� ��� �������� ��������:
  Form1: TForm1;                      //�����
  X0,X1,D,Y,X,T,Max :real;            //���������� ��������, ��������� ��������, ����, �������� Y, �������� X, �������� T � ������������� ��������
  i                 :integer;         //��������
  Picture           :string;          //�������� ���������
  Cancel            :boolean;         //��������� ���������

implementation

{$R *.dfm}

//��� ����� ������������ ����� �������� ���������� ���������!
//������� ����� ������ ��� ��������� ���� ��������.
//--------------------------------------------------------------------------------------
function TForm1.F1(x: double): double;
begin
  F1:=Exp(-0.1*X)*(Sin(X)/Cos(X));
end;

function TForm1.F2(x: double): double;
begin
  F2:=(Sin(((2*X)*(2*X)*(2*X))+4)+(Cos(((3*X)*(3*X))-5*X)*(Cos(((3*X)*(3*X))-5*X))));
end;
//--------------------------------------------------------------------------------------

procedure TForm1.STEP;                           //����������� ����
var
  Dx         : Double;                           //���������� ���, �����������, ����� �������� �� �������� �������� D � ����������� ������
begin
  Dx:=0;
  Randomize;                                     //����������� ���������� Randomize
  if CheckBox1.Checked then                      //� ������, ���� ����� ���� ������ �������� ��������,
    Dx:=(X1-X0)/(Random(500)+501)                //����������� ������ �������.
  else                                           //�����
    Dx:=0.25*abs(F2(StrToFloat(Edit2.Text)));    //����������� ������ �������.
  D:=Dx;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Picture:='���������.jpg';                      //��� ������ ��������� ������������� �������� ������ ��� �������� ����������� ���������
  StringGrid1.Cells[0,0]:='�������� T';          //� ������������� �������� ������ ������ �������,
  StringGrid1.Cells[1,0]:='�������� Y';          //������� �������� � �����
  StringGrid1.Cells[2,0]:='�������� X';
  Cancel:=False;                                 //������ "����������" �� ������
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if StrToFloat(Edit1.Text)>=StrToFloat(Edit2.Text) then                   //����������� ������������ ����� ���������� � ��������� ��������
    ShowMessage('��������� �������� �� ����� ���� ������ ���������!')      //� ������, ���� ��������� �������� ������ ���������, ��������� ��������� ������������
  else begin

  Button2.Visible:=False;             //������ ������������ �������� ��� ������������ ������������� � ������������ ��������
  GroupBox2.Visible:=False;
  GroupBox3.Visible:=False;
  Label4.Visible:=False;

  Cancel:=False;                      //������ "����������" �� ������
  ProgressBar1.Position:=0;

  X0:=StrToFloat(Edit1.Text);         //���� ���������� ��������
  X1:=StrToFloat(Edit2.Text);         //���� ��������� ��������

  STEP;       //����� ���������, ����������� ���

  Chart1.Series[0].Clear;             //������� ���� ��������
  Chart1.Series[1].Clear;

  StringGrid1.RowCount:=trunc((X1-X0)/D);    //����������� ���������� ����� � ������� (trunc ������ ������������ ����� �����)

  for i := 1 to StringGrid1.RowCount-1 do    //���������� ���� ����� ������
    begin
      StringGrid1.Cells[0,i]:=FloatToStr(0);
      StringGrid1.Cells[1,i]:=FloatToStr(0);
      StringGrid1.Cells[2,i]:=FloatToStr(0);
    end;

  T:=X0; //��������� �������� X. ������� ��� ����� �������� �� ������ ����
  i:=1;  //��������� �������� ��������

  while T<=X1 do     //����, ������������� �� �������, ����� T (X0) ����� ������ ��������� �������� X
    begin
      if D>0 then          //�������� ����������������� ���� �������
        if Cancel=False then       //�������� ����, ��� ������ "����������" �� ������
          begin
            Application.ProcessMessages;                  //��������� ����������� ����������� ��������
            ProgressBar1.Position:=Round(T/(X1-X0)*100);  //���������� ProgressBar �������� ���������� ��������� ��� ����������� (Round ��������� ������������ ����� �� ������)

            X:=F1(T);     //������� ��������
            Y:=F2(T);     //������� ������������ �������

            StringGrid1.Cells[0,i]:=FloatToStrF(T,ffFixed,10,6);    //��������� �������� �������� T � ������� ������ i
            StringGrid1.Cells[1,i]:=FloatToStrF(Y,ffFixed,10,6);    //��������� �������� �������� Y � ������� ������ i
            StringGrid1.Cells[2,i]:=FloatToStrF(X,ffFixed,10,6);    //��������� �������� �������� X � ������� ������ i

            Chart1.Series[0].AddXY(T,Y);        //���������� ������� ����� T,Y �� ������
            Chart1.Series[1].AddXY(T,X);        //���������� ������� ����� T,X �� ������

            if CheckBox2.Checked then
              D:=D-0.00001; //���������� ���� � ������ ����� ���������

            T:=T+D;      //���������� � �������� T ���
            Inc(i);      //������������� i (���������� i �� 1)

            Label13.Caption:='���������� ������ ��� D>0 = '+IntToStr(Chart1.Series[0].Count-1);       //����� ��������
            Label14.Caption:='�������� ���� (D) = '+floattostr(D);                                    //�� ������ ���������
          end
        else                 //� ������, ���� ���� ������ ������ "����������", ����������� ��������� ��������� � ����������� ������������
          begin
            ProgressBar1.Position:=100;
            Label4.Caption:='���������� �����������!';
            Label4.Visible:=True;
            Break;
          end
      else                  //� ������, ���� ��� ��������� ������������� ��������, ����������� ��������� ��������� � ����������� ������������
        begin
          ProgressBar1.Position:=100;
          Label4.Caption:='��� ������ ������������� ��������!';
          Label4.Visible:=True;
          Break;
        end;
    end;

  Button2.Visible:=True; end;     //����������� ������, �� ������� �� ������� ����� ���������� ����������� � ������������ ��������
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  GroupBox2.Visible:=True;       //���������� GroupBox2 � GroupBox3, �� �������
  GroupBox3.Visible:=True;       //������������ ������� Label ��� ������ �������� �� �����

  //����� ������������ ��������
  Max:=StrToFloat(StringGrid1.Cells[0,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if StrToFloat(StringGrid1.Cells[0,i])>Max then
     Max:=StrToFloat(StringGrid1.Cells[0,i]);
  Label1.Caption:='�������� T = '+FloatToStr(Max);

  Max:=StrToFloat(StringGrid1.Cells[1,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if StrToFloat(StringGrid1.Cells[1,i])>Max then
     Max:=StrToFloat(StringGrid1.Cells[1,i]);
  Label5.Caption:='�������� Y = '+FloatToStr(Max);

  Max:=StrToFloat(StringGrid1.Cells[2,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if (StrToFloat(StringGrid1.Cells[2,i])>Max) then
     Max:=StrToFloat(StringGrid1.Cells[2,i]);
  Label6.Caption:='�������� X = '+FloatToStr(Max);

  //����� ����������� ��������
  Max:=StrToFloat(StringGrid1.Cells[0,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if StrToFloat(StringGrid1.Cells[0,i])<Max then
     Max:=StrToFloat(StringGrid1.Cells[0,i]);
  Label7.Caption:='�������� T = '+FloatToStr(Max);

  Max:=StrToFloat(StringGrid1.Cells[1,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if StrToFloat(StringGrid1.Cells[1,i])<Max then
     Max:=StrToFloat(StringGrid1.Cells[1,i]);
  Label8.Caption:='�������� Y = '+FloatToStr(Max);

  Max:=StrToFloat(StringGrid1.Cells[2,1]);
  for i := 1 to StringGrid1.RowCount-1 do
   if StrToFloat(StringGrid1.Cells[2,i])<Max then
     Max:=StrToFloat(StringGrid1.Cells[2,i]);
  Label9.Caption:='�������� X = '+FloatToStr(Max);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Cancel:=True;                                  //������ "����������" ������
  Label4.Visible:=True;
end;

procedure TForm1.Chart1Click(Sender: TObject);
begin
  Chart1.SaveToBitmapFile(Picture);              //�� ����� �� ��������� ����������� ����������� � ���� �� ������, ������� ��������� � ���������� Picture
  Chart1.CopyToClipboardBitmap;                  //����������� ��������� ���������� � ����� ������
end;

//���������� ����� �� �������� �������� � ���� Edit1 � Edit2
//-------------------------------------------------------------
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    Key:=#0;
end;
//-------------------------------------------------------------

end.
