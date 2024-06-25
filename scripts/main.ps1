# School init script
# by Joachim256

## Unpin
echo "Unpinning..."

H:\scripts\unpin.ps1

## Change mouse sensitivity
echo "Changing mouse sensitivity..."

$winApi = add-type -name user32 -namespace m1 -passThru -memberDefinition '
   [DllImport("user32.dll")]
	public static extern bool SystemParametersInfo(
		uint uiAction,
		uint uiParam,
		uint pvParam,
		uint fWinIni
	);
'

$SPI_SETMOUSESPEED = 0x0071
$MOUSE_SPEED = 8

$null = $winApi::SystemParametersInfo($SPI_SETMOUSESPEED, 0, $MOUSE_SPEED, 0)

## Disable mouse acceleration
echo "Disabling mouse acceleration..."

$winApi = add-type -name user32 -namespace m2 -passThru -memberDefinition '
   [DllImport("user32.dll")]
	public static extern bool SystemParametersInfo(
		uint uiAction,
		uint uiParam,
		int[] pvParam,
		uint fWinIni
	);
'

$null = $winApi::SystemParametersInfo(4, 0, 0, 2)

# Launch chrome
echo "Launching chrome..."
Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe" -ArgumentList "--user-data-dir=`"H:\Chrome Data`""
exit
