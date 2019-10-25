# escape=`

FROM  mcr.microsoft.com/windows/servercore:1709

# Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

# Download the Build Tools bootstrapper.
COPY vs_buildtools.exe C:\TEMP\vs_buildtools.exe

RUN mkdir BuildTools

# Install Build Tools excluding workloads and components with known issues
RUN C:\TEMP\vs_buildtools.exe --norestart --quiet --wait --installPath C:\BuildTools --add Microsoft.VisualStudio.Component.VC.CoreBuildTools --add Microsoft.VisualStudio.Component.VC.v141.x86.x64 --add Microsoft.VisualStudio.Component.Windows10SDK.17134

COPY . .

# Default to PowerShell if no other command specified.
CMD ["cmd.exe", "C:\BuildTools\Common7\IDE\devenv.com"]
