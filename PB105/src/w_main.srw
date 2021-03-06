$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_3 from statictext within w_main
end type
type st_textexample from statictext within w_main
end type
type st_2 from statictext within w_main
end type
type sle_fontsize from singlelineedit within w_main
end type
type st_1 from statictext within w_main
end type
type cb_generator from commandbutton within w_main
end type
type sle_text from singlelineedit within w_main
end type
type lb_fonts from listbox within w_main
end type
type cb_uninstall from commandbutton within w_main
end type
type cb_install from commandbutton within w_main
end type
type st_barcode from statictext within w_main
end type
end forward

global type w_main from window
integer width = 2094
integer height = 1592
boolean titlebar = true
string title = "Barcode Generator"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_3 st_3
st_textexample st_textexample
st_2 st_2
sle_fontsize sle_fontsize
st_1 st_1
cb_generator cb_generator
sle_text sle_text
lb_fonts lb_fonts
cb_uninstall cb_uninstall
cb_install cb_install
st_barcode st_barcode
end type
global w_main w_main

type prototypes
Function Long AddFontResourceExW( Readonly String as_FontFile, ULong aul_FontCharacteristics, ULong aul_Reserved ) Library "GDI32.dll" Alias For "AddFontResourceExW"
Function Boolean RemoveFontResourceExW( Readonly String as_FonfFile, ULong aul_FontCharacteristics, ULong aul_Reserved ) Library "GDI32.dll" Alias For "RemoveFontResourceExW"

end prototypes

type variables
String is_dir

end variables

forward prototypes
public subroutine wf_font (string as_font, ref string as_fontfile, ref string as_extext, ref string as_exsize)
public function string wf_getfontfile (string as_fontname)
end prototypes

public subroutine wf_font (string as_font, ref string as_fontfile, ref string as_extext, ref string as_exsize);Choose Case Trim(as_font)
	Case "Code 128"
		as_fontfile = "code128.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "25"
	Case "3 of 9 Barcode"
		as_fontfile = "3OF9_NEW.TTF"
		as_extext = "programmingmethodsit.com"
		as_exsize = "12"
	Case "Free 3 Of 9"
		as_fontfile = "Free3Of9Regular-B06n.ttf"
		as_extext = "//...//"
		as_exsize = "30"
	Case "Free 3 Of 9 Extended"
		as_fontfile = "Free3Of9ExtendedRegular-RvDe.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "15"
	Case "K-O-D-E-39 Hidden"
		as_fontfile = "K-O-D-E-39 Hidden.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "22"
	Case "EanBwrP36Tt"
		as_fontfile = "eanbwrp36tt.ttf"
		as_extext = "123456789"
		as_exsize = "50"
	Case "EanBwrP72Tt"
		as_fontfile = "eanbwrp72tt.ttf"
		as_extext = "123456789"
		as_exsize = "50"
	Case "Another barcode font"
		as_fontfile = "Another barcode font.ttf"
		as_extext = "programmingmethodsit"
		as_exsize = "40"
	Case "Bar-Code 39"
		as_fontfile = "BarCode39-Z7DZ.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "14"
	Case "Bar-Code 39 lesbar"
		as_fontfile = "BarCode39Lesbar-3yDM.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "14"
	Case "barcode font"
		as_fontfile = "BarcodeFont-965.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "40"
	Case "BARCODE TFB"
		as_fontfile = "BARCODE TFB.ttf"
		as_extext = "programmingmethodsit"
		as_exsize = "50"
	Case "BarMKode"
		as_fontfile = "BarMKode-Inverse.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "25"
	Case "C39HrP24DhTt"
		as_fontfile = "c39hrp24dhtt.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "25"
	Case "C39HrP24DlTt"
		as_fontfile = "c39hrp24dltt.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "18"
	Case "C39HrP36DlTt"
		as_fontfile = "c39hrp36dltt.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "20"
	Case "C39HrP48DhTt"
		as_fontfile = "c39hrp48dhtt.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "50"
	Case "C39HrP72DlTt"
		as_fontfile = "C39HrP72DlTt.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "40"
	Case "CCode39"
		as_fontfile = "ConnectCode39.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "22"
	Case "CIA Code 39 Medium Text"
		as_fontfile = "ciacode39_m.ttf"
		as_extext = "PROGRAMMINGMETHODSIT.COM"
		as_exsize = "22"
	Case "Codabar 123 LE lesbar"
		as_fontfile = "Codabar123LeLesbar-p2dD.ttf"
		as_extext = "12345679"
		as_exsize = "50"
	Case "Codabar 123 LE"
		as_fontfile = "Codabar123Le-xXeO.ttf"
		as_extext = "123456789"
		as_exsize = "40"
	Case "Code 39-hoch-Logitogo"
		as_fontfile = "Code39-hoch-Logitogo.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "20"
	Case "CODE3X"
		as_fontfile = "CODE3X-D.TTF"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "18"
	Case "Code39"
		as_fontfile = "Code39r.ttf"
		as_extext = "//.....//"
		as_exsize = "50"
	Case "Code-39-Logitogo"
		as_fontfile = "Code-39-Logitogo.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "18"
	Case "IDAHC39M Code 39 Barcode"
		as_fontfile = "IDAutomationHC39M Code 39 Barcode.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "25"
	Case "IDAutomationHC39M"
		as_fontfile = "Idautomationhc39m-raq9.ttf"
		as_extext = "programmingmethodsit.com"
		as_exsize = "35"
	Case "Code EAN13"
		as_fontfile = "ean13.ttf"
		as_extext = "12345789"
		as_exsize = "35"
	Case "Code 3 de 9"
		as_fontfile = "code39.ttf"
		as_extext = "12345789"
		as_exsize = "40"
	Case "Libre Barcode 128 Text"
		as_fontfile = "LibreBarcode128Text-Regular.ttf"
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "20"
	Case Else
		as_fontfile = ""
		as_extext = "https://programmingmethodsit.com"
		as_exsize = "10"
End Choose



end subroutine

public function string wf_getfontfile (string as_fontname);String ls_fontfile, ls_extext, ls_exsize

wf_font(as_fontname, ls_fontfile, ls_extext, ls_exsize)
If ls_fontfile = "" Then
	ls_fontfile = ""
Else
	ls_fontfile = is_dir + "\Fonts\" + ls_fontfile
End If
Return ls_fontfile


end function

on w_main.create
this.st_3=create st_3
this.st_textexample=create st_textexample
this.st_2=create st_2
this.sle_fontsize=create sle_fontsize
this.st_1=create st_1
this.cb_generator=create cb_generator
this.sle_text=create sle_text
this.lb_fonts=create lb_fonts
this.cb_uninstall=create cb_uninstall
this.cb_install=create cb_install
this.st_barcode=create st_barcode
this.Control[]={this.st_3,&
this.st_textexample,&
this.st_2,&
this.sle_fontsize,&
this.st_1,&
this.cb_generator,&
this.sle_text,&
this.lb_fonts,&
this.cb_uninstall,&
this.cb_install,&
this.st_barcode}
end on

on w_main.destroy
destroy(this.st_3)
destroy(this.st_textexample)
destroy(this.st_2)
destroy(this.sle_fontsize)
destroy(this.st_1)
destroy(this.cb_generator)
destroy(this.sle_text)
destroy(this.lb_fonts)
destroy(this.cb_uninstall)
destroy(this.cb_install)
destroy(this.st_barcode)
end on

event open;is_dir = GetCurrentDirectory ( )
lb_fonts.selectitem( 1)
lb_fonts.event selectionchanged( 1)
end event

type st_3 from statictext within w_main
integer x = 960
integer y = 320
integer width = 416
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text Eample:"
boolean focusrectangle = false
end type

type st_textexample from statictext within w_main
integer x = 960
integer y = 416
integer width = 1061
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "https://programmingmethodsit.com"
boolean focusrectangle = false
end type

type st_2 from statictext within w_main
integer x = 1545
integer y = 188
integer width = 283
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Font Size:"
boolean focusrectangle = false
end type

type sle_fontsize from singlelineedit within w_main
integer x = 1829
integer y = 176
integer width = 192
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "16"
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

event modified;
st_barcode.TextSize = dec(sle_fontsize.Text)

end event

type st_1 from statictext within w_main
integer x = 64
integer y = 1400
integer width = 1024
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "if you don~'t have barcode font installed"
boolean focusrectangle = false
end type

type cb_generator from commandbutton within w_main
integer x = 960
integer y = 164
integer width = 553
integer height = 108
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generator"
end type

event clicked;st_textexample.text = sle_text.text
st_barcode.setredraw( true)
st_barcode.text =  sle_text.text
st_barcode.TextSize = dec(sle_fontsize.Text)
st_barcode.facename = lb_fonts.selecteditem( )
st_barcode.setredraw( false)
end event

type sle_text from singlelineedit within w_main
integer x = 960
integer y = 56
integer width = 1061
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "https://programmingmethodsit.com"
borderstyle borderstyle = stylelowered!
end type

type lb_fonts from listbox within w_main
integer x = 41
integer y = 48
integer width = 873
integer height = 1188
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
string item[] = {"Code 128","Free 3 Of 9","Free 3 Of 9 Extended","K-O-D-E-39 Hidden","EanBwrP36Tt","EanBwrP72Tt","3 of 9 Barcode","Another barcode font","Bar-Code 39","Bar-Code 39 lesbar","barcode font","BARCODE TFB","BarMKode","C39HrP24DhTt","C39HrP24DlTt","C39HrP36DlTt","C39HrP48DhTt","CCode39","CIA Code 39 Medium Text","Codabar 123 LE lesbar","Codabar 123 LE","Code 39-hoch-Logitogo","CODE3X","Code39","Code-39-Logitogo","IDAHC39M Code 39 Barcode","IDAutomationHC39M","C39HrP72DlTt","Code EAN13","Code 3 de 9","Libre Barcode 128 Text"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;String ls_font
String ls_fontfile, ls_extext, ls_exsize


ls_font = This.SelectedItem( )
wf_font(ls_font, ls_fontfile, ls_extext, ls_exsize)

st_barcode.FaceName = ls_font
st_textexample.text = ls_extext
st_barcode.text = ls_extext
sle_fontsize.text = ls_exsize
st_barcode.textsize = dec(ls_exsize)





end event

type cb_uninstall from commandbutton within w_main
integer x = 480
integer y = 1260
integer width = 411
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "UnInstall Font"
end type

event clicked;String ls_fonts, ls_font, ls_fontfile
Boolean lb_rc

Constant Long FR_PRIVATE = 16
Constant Long FR_NOT_ENUM = 32

ls_fonts = lb_fonts.SelectedItem( )

ls_fontfile = wf_getfontfile(ls_fonts)
If ls_fontfile = "" Then Return
If Not FileExists(ls_fontfile) Then
	MessageBox("Warning","Font Not Exits" )
	Return
End If

lb_rc = RemoveFontResourceExW(ls_font ,FR_PRIVATE + FR_NOT_ENUM,0)
If Not lb_rc Then
	MessageBox("Warning","Remove Font Error" )
	Return
End If 

MessageBox("Warning", "Font: " + ls_fonts + " UnInstall Success")








end event

type cb_install from commandbutton within w_main
integer x = 55
integer y = 1260
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Install Font"
end type

event clicked;String ls_fonts, ls_font, ls_fontfile
Long    ll_rc, ll_row

Constant Long FR_PRIVATE = 16
Constant Long FR_NOT_ENUM = 32

ls_fonts = lb_fonts.SelectedItem( )

ls_fontfile = wf_getfontfile(ls_fonts)
If ls_fontfile = "" Then Return
If Not FileExists(ls_fontfile) Then
	MessageBox("Warning","Font Not Exits" )
	Return
End If

ll_rc = AddFontResourceExW(ls_fontfile ,FR_PRIVATE + FR_NOT_ENUM,0)
If ll_rc <> 1 Then
	MessageBox("Warning","Add Font Error" + String(ll_rc) )
	Return
End If

MessageBox("Warning", "Font: " + ls_fonts + " Install Success")
















end event

type st_barcode from statictext within w_main
integer x = 965
integer y = 508
integer width = 1061
integer height = 364
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "https://programmingmethodsit.com"
boolean focusrectangle = false
end type

