unit U_Modulo;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics;

type
  TData_Module = class(TDataModule)
    ListCustom16x16: TcxImageList;
    ListCustom32x32: TcxImageList;
    ListBotoes16x16: TcxImageList;
    listbotoes32x32: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Data_Module: TData_Module;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
