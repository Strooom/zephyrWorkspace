$ToolsRoot = "C:\Users\pasca\.zinstaller\tools"
$env:ZEPHYR_SDK_INSTALL_DIR = "C:\Users\pasca\Documents\Projects\Zephyr\SDKs\ZephyrSdkArm\zephyr-sdk-0.17.4"
$env:ZEPHYR_TOOLCHAIN_VARIANT = "zephyr"

$env:PATH = @(
    "$ToolsRoot\cmake\bin",
    "$ToolsRoot\dtc\usr\bin",
    "$ToolsRoot\git\bin",
    "$ToolsRoot\git\cmd",
    "$ToolsRoot\gperf\bin",
    "$ToolsRoot\ninja",
    "$ToolsRoot\openocd\bin",
    "$ToolsRoot\python\python",
    "$ToolsRoot\wget",
    "$ToolsRoot\yq",
    $env:PATH
) -join ";"
