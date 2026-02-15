@echo off
:: Provjera administratorskih prava
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Instaliram digitalni certifikat...
    :: Naredba za uvoz certifikata u 'Trusted People' na razini cijelog racunala
    certutil -addstore -f "TrustedPeople" "RUK64xInstaller_MSIX.cer"
    echo.
    echo [USPJEH] Certifikat je uspjesno instaliran.
    echo Sada mozete pokrenuti instalaciju programa.
    pause
) else (
    echo [GRESKA] Desni klik na ovu datoteku i odaberite "Run as administrator".
    pause
)