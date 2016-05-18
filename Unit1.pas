unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    od: TOpenDialog;
    sd: TSaveDialog;
    Button4: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pb: TProgressBar;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var fname,ext:string;
begin
 if od.Execute then 
  begin
   edit1.Text:=od.FileName;
   ext:=ExtractFileExt(od.FileName);
   fname:=copy(od.FileName,1,length(od.FileName)-length(ext));
   edit2.Text:=fname+'(çâîíêè ïî ïèíêîäó)'+ext;
   edit3.Text:=fname+'(ÎÑÒÀËÜÍÛÅ çâîíêè)'+ext;;
   pb.Position:=0;
  end;
 end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if sd.Execute then edit2.Text:=sd.FileName;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
inf,outf,outf2 : system.Text;
s: string;
le:integer;
pbp:double;
begin
 button3.Enabled:=false;
 if not fileexists(edit1.text) then exit;
 assignfile(inf,edit1.text);
 assignfile(outf,edit2.text);
 assignfile(outf2,edit3.text);
 reset(inf);
 rewrite(outf);
 rewrite(outf2);
 le:=FileSize(inf)*128;
 pb.Max:=1000;
 pb.Position:=0;
 pbp:=0;
 while not EOF(inf) do
  begin
   readln(inf,s);
   pbp:=pbp+length(s);
   pb.Position:=round(pbp/le*1000);
   if length(s)>19 then
   if s[19]='*' then 
   begin
     writeln(outf,s);          
     continue;
   end;
   if length(s)>0 then
     if (s[1]>='0') and (s[1]<='9') then
       writeln(outf2,s);
  end;
 closefile(inf);
 closefile(outf);
 closefile(outf2);
 pb.Position:=pb.Max;
 button3.Enabled:=true;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
 if sd.Execute then edit3.Text:=sd.FileName;
end;

end.
