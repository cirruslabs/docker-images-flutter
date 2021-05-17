FROM cirrusci/android-sdk:30-windowsservercore-2019

# Install VS
## https://docs.microsoft.com/en-us/visualstudio/install/build-tools-container?view=vs-2019

## Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

## Download the Build Tools bootstrapper.
ADD https://aka.ms/vs/16/release/channel C:/TEMP/VisualStudio.chman

ADD https://aka.ms/vs/16/release/vs_buildtools.exe C:/TEMP/vs_buildtools.exe
## https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2019
RUN C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --nocache \
    --channelUri C:\TEMP\VisualStudio.chman \
    --installChannelUri C:\TEMP\VisualStudio.chman \
    --add Microsoft.VisualStudio.Component.Windows10SDK.19041 \
    --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 \
    --add Microsoft.VisualStudio.Component.VC.CMake.Project \
    --add Microsoft.VisualStudio.Workload.NativeDesktop \
    --add Microsoft.VisualStudio.Workload.ManagedDesktopBuildTools \
    --add Microsoft.VisualStudio.Workload.VCTools \
    --add Microsoft.VisualStudio.Component.VC.CLI.Support \
    --installPath C:\BuildTools \
     || IF "%ERRORLEVEL%"=="3010" EXIT 0

# Install Google Root R1 cert so pub.dartlang.org stays working

ADD https://pki.goog/repo/certs/gtsr1.pem C:/TEMP/gtsr1.pem
RUN powershell.exe -Command \
        Import-Certificate -FilePath C:\TEMP\gtsr1.pem -CertStoreLocation Cert:\LocalMachine\Root

# Install Flutter

RUN setx path "%path%;C:\flutter\bin;C:\flutter\bin\cache\dart-sdk\bin;"

RUN git clone --branch dev https://github.com/flutter/flutter.git C:\flutter

RUN flutter config --no-analytics

RUN flutter config --enable-windows-desktop

## Fix android sdk licenses (missing in cirruslabs container)
RUN powershell.exe -Command \
        Set-Content -Value "`n859f317696f67ef3d7f30a50a5560e7834b43903" -Path C:\Android\licenses\android-sdk-arm-dbt-license

RUN flutter doctor -v
