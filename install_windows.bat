@echo off
ECHO ----------------------------
ECHO Adwaita for Steam Installer
ECHO ----------------------------

:: -----------------
:: --- VARIABLES ---
:: -----------------
:: --- Do not edit these ---

:: --- General ---
SET NO_ROUNDED_CORNERS=-we general/no_rounded_corners

:: --- Library ---
SET HIDE_WHATS_NEW=-we library/hide_whats_new
SET SIDEBAR_HOVER_ONLY=-we library/sidebar_hover

:: --- Login ---
SET LOGIN_HIDE_QR=-we login/hide_qr
SET LOGIN_HOVER_ONLY_QR=-we login/hover_qr

:: --- Top Bar ---
SET HIDE_BIG_PICTURE_BUTTON=-we topbar/hide_bp
SET HIDE_PAGE_URL=-we topbar/hide_url
SET SHOW_NAVIGATION_ARROWS=-we topbar/show_arrows
SET ORIGINAL_STYLE_TOP_BAR=-we topbar/vanilla_bar

:: --- Bottom Bar ---
SET HIDE_BOTTOM_BAR=-we bottombar/hide_bar

:: --- Window Controls ---
SET WINDOW_CONTROLS=-we windowcontrols/right-all

GOTO START_SECTION

:: ---------------
:: --- DEFAULT ---
:: ---------------
:DEFAULT_SECTION
SET CHOSEN_COLORTHEME=adwaita

:: SET CHOSEN_NO_ROUNDED_CORNERS=%NO_ROUNDED_CORNERS%

:: SET CHOSEN_HIDE_WHATS_NEW=%HIDE_WHATS_NEW%
:: SET CHOSEN_SIDEBAR_HOVER_ONLY=%SIDEBAR_HOVER_ONLY%

:: Only uncomment one
:: SET CHOSEN_LOGIN_QR=%LOGIN_HOVER_ONLY_QR%
:: SET CHOSEN_LOGIN_QR=%LOGIN_HIDE_QR%

:: SET CHOSEN_ORIGINAL_STYLE_TOP_BAR=%ORIGINAL_STYLE_TOP_BAR%
:: SET CHOSEN_HIDE_BIG_PICTURE_BUTTON=%HIDE_BIG_PICTURE_BUTTON%
:: SET CHOSEN_HIDE_PAGE_URL=%HIDE_PAGE_URL%
:: SET CHOSEN_SHOW_NAVIGATION_ARROWS=%SHOW_NAVIGATION_ARROWS%

:: SET CHOSEN_HIDE_BOTTOM_BAR=%HIDE_BOTTOM_BAR%

GOTO INSTALL_SECTION

:: -------------
:: --- METRO ---
:: -------------
:METRO_SECTION
SET CHOSEN_COLORTHEME=metro
SET CHOSEN_NO_ROUNDED_CORNERS=%NO_ROUNDED_CORNERS%
GOTO INSTALL_SECTION

:: --------------
:: --- CUSTOM ---
:: --------------
:CUSTOM_SECTION
ECHO --- Colortheme ---
ECHO 1) adwaita
ECHO 2) breeze
ECHO 3) catppuccin-frappe
ECHO 4) catppuccin-macchiato
ECHO 5) catppuccin-mocha
ECHO 6) dracula
ECHO 7) gruvbox
ECHO 8) kate
ECHO 9) metro
ECHO 10) nord
ECHO 11) one-pro
ECHO 12) pop
ECHO 13) tokyo-night
ECHO 14) tomorrow-night
ECHO 15) yaru
SET /p MENUCHOICE="Enter a number: "
IF %MENUCHOICE%==1 SET CHOSEN_COLORTHEME=adwaita
IF %MENUCHOICE%==2 SET CHOSEN_COLORTHEME=breeze
IF %MENUCHOICE%==3 SET CHOSEN_COLORTHEME=catppuccin-frappe
IF %MENUCHOICE%==4 SET CHOSEN_COLORTHEME=catppuccin-macchiato
IF %MENUCHOICE%==5 SET CHOSEN_COLORTHEME=catppuccin-mocha
IF %MENUCHOICE%==6 SET CHOSEN_COLORTHEME=dracula
IF %MENUCHOICE%==7 SET CHOSEN_COLORTHEME=gruvbox
IF %MENUCHOICE%==8 SET CHOSEN_COLORTHEME=kate
IF %MENUCHOICE%==9 SET CHOSEN_COLORTHEME=metro
IF %MENUCHOICE%==10 SET CHOSEN_COLORTHEME=nord
IF %MENUCHOICE%==11 SET CHOSEN_COLORTHEME=one-pro
IF %MENUCHOICE%==12 SET CHOSEN_COLORTHEME=pop
IF %MENUCHOICE%==13 SET CHOSEN_COLORTHEME=tokyo-night
IF %MENUCHOICE%==14 SET CHOSEN_COLORTHEME=tomorrow-night
IF %MENUCHOICE%==15 SET CHOSEN_COLORTHEME=yaru
ECHO.

ECHO --- General ---
ECHO Disable Rounded Corners?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_NO_ROUNDED_CORNERS=%NO_ROUNDED_CORNERS%
ECHO.

ECHO --- Library ---
ECHO Hide the Library What's New Shelf?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_HIDE_WHATS_NEW=%HIDE_WHATS_NEW%
ECHO.
ECHO Show Library Sidebar only on mouse over?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_SIDEBAR_HOVER_ONLY=%SIDEBAR_HOVER_ONLY%
ECHO.

ECHO --- Login ---
ECHO Login Dialog Mobile QR Code
ECHO 1) Show
ECHO 2) Show only on mouse over
ECHO 3) Hide
SET /p MENUCHOICE="Enter a number: "
IF %MENUCHOICE%==2 SET CHOSEN_LOGIN_QR=%LOGIN_HOVER_ONLY_QR%
IF %MENUCHOICE%==3 SET CHOSEN_LOGIN_QR=%LOGIN_HIDE_QR%
ECHO.

ECHO --- Top Bar ---
ECHO Use the Original Steam Style Top Bar?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_ORIGINAL_STYLE_TOP_BAR=%ORIGINAL_STYLE_TOP_BAR%
ECHO.
ECHO Hide Big Picture Button?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_HIDE_BIG_PICTURE_BUTTON=%HIDE_BIG_PICTURE_BUTTON%
ECHO.
ECHO Hide Page URL?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_HIDE_PAGE_URL=%HIDE_PAGE_URL%
ECHO.
ECHO Show Forward/Backward Navigation Arrows?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_SHOW_NAVIGATION_ARROWS=%SHOW_NAVIGATION_ARROWS%
ECHO.

ECHO --- Bottom Bar ---
ECHO Hide the Bottom Bar?
SET /p MENUCHOICE="(y/n): "
IF %MENUCHOICE%==y SET CHOSEN_HIDE_BOTTOM_BAR=%HIDE_BOTTOM_BAR%
ECHO.

GOTO INSTALL_SECTION

:: -------------
:: --- START ---
:: -------------
:START_SECTION

ECHO.
ECHO -------------------
ECHO --- Menu Select ---
ECHO -------------------
ECHO 1) Default Install (Quick)
ECHO 2) Metro Install (Quick)
ECHO 3) Custom Install (Interactive)
ECHO 4) Uninstall

SET /p MENUCHOICE="Enter a number: "

IF %MENUCHOICE%==2 GOTO METRO_SECTION
IF %MENUCHOICE%==3 GOTO CUSTOM_SECTION
IF %MENUCHOICE%==4 GOTO UNINSTALL_SECTION

GOTO DEFAULT_SECTION

:: --- Install ---
:INSTALL_SECTION
install.py -fi -c %CHOSEN_COLORTHEME% %CHOSEN_NO_ROUNDED_CORNERS% %CHOSEN_HIDE_WHATS_NEW% %CHOSEN_SIDEBAR_HOVER_ONLY% %CHOSEN_LOGIN_QR% %CHOSEN_HIDE_BIG_PICTURE_BUTTON% %CHOSEN_HIDE_PAGE_URL% %CHOSEN_SHOW_NAVIGATION_ARROWS% %CHOSEN_ORIGINAL_STYLE_TOP_BAR% %CHOSEN_HIDE_BOTTOM_BAR% %WINDOW_CONTROLS%
GOTO END_SECTION

:: --- Uninstall ---
:UNINSTALL_SECTION
install.py -u
GOTO END_SECTION

:: --- End ---
:END_SECTION
PAUSE
