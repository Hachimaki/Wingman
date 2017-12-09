set AUTOTESTDIR="%~dp0\aircraft"
c:
FOR /F "delims=" %%D in ('dir /b "\Program Files"\FlightGear*') DO set FGDIR=%%D
echo "Using FlightGear %FGDIR%"
cd "\Program Files\%FGDIR%\bin"

fgfs ^
    --native-fdm=socket,in,10,,5503,udp ^
    --fdm=external ^
    --aircraft=arducopter ^
    --fg-aircraft=%AUTOTESTDIR% ^
    :: --airport=KSFO ^
    --lon=-84.299795 ^
    --lat=30.445969 ^
    --geometry=650x550 ^
    --bpp=32 ^
    --disable-anti-alias-hud ^
    --disable-hud-3d ^
    --disable-horizon-effect ^
    --timeofday=noon ^
    --disable-sound ^
    --disable-fullscreen ^
    --disable-random-objects ^
    --disable-ai-models ^
    --fog-disable ^
    --disable-specular-highlight ^
    --disable-anti-alias-hud ^
    --wind=0@0
pause
