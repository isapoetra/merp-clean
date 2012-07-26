unit reportform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,dsun, RpDefine, RpRender, RpRenderCanvas,
  RpRenderPreview, Vcl.StdCtrls, RpRenderPrinter, RpRenderPDF, RpRenderText,
  RpRenderRTF, RpRenderHTML, RpRave, RpBase, RpSystem;

type
  TfrmReport = class(TForm)
    preview: TRvRenderPreview;
    Button1: TButton;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderPrinter1: TRvRenderPrinter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

end.
